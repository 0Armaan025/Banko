import 'package:banko/views/features/home/home_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class CoolLoadingScreen extends StatefulWidget {
  const CoolLoadingScreen({super.key});

  @override
  _CoolLoadingScreenState createState() => _CoolLoadingScreenState();
}

class _CoolLoadingScreenState extends State<CoolLoadingScreen>
    with TickerProviderStateMixin {
  int _activeDot = 0;
  final List<Color> _dotColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];
  late AnimationController _textFadeController;
  late Animation<double> _textOpacity;
  late AnimationController _gradientController;

  @override
  void initState() {
    super.initState();

    _gradientController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4))
          ..repeat(reverse: true);

    _textFadeController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    _textOpacity = CurvedAnimation(
      parent: _textFadeController,
      curve: Curves.easeIn,
    );
    _textFadeController.forward();

    Timer.periodic(const Duration(milliseconds: 400), (timer) {
      setState(() {
        _activeDot = (_activeDot + 1) % 4;
      });
    });

    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _textFadeController.dispose();
    _gradientController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _gradientController,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.grey[900]!,
                  Colors.blueGrey[800]!,
                  Colors.grey[900]!,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [
                  0.0,
                  _gradientController.value,
                  1.0,
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeTransition(
                    opacity: _textOpacity,
                    child: const Text(
                      'Connecting to your bank',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FadeTransition(
                    opacity: _textOpacity,
                    child: const Text(
                      'Please wait...',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        height: _activeDot == index ? 20 : 15,
                        width: _activeDot == index ? 20 : 15,
                        decoration: BoxDecoration(
                          color: _activeDot == index
                              ? _dotColors[index]
                              : Colors.grey[700],
                          shape: BoxShape.circle,
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
