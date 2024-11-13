import 'package:flutter/material.dart';
import 'dart:async';
import 'package:confetti/confetti.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingSuccessScreen extends StatefulWidget {
  const LoadingSuccessScreen({super.key});

  @override
  _LoadingSuccessScreenState createState() => _LoadingSuccessScreenState();
}

class _LoadingSuccessScreenState extends State<LoadingSuccessScreen>
    with TickerProviderStateMixin {
  late AnimationController _checkmarkController;
  late Animation<double> _checkmarkScale;
  late AnimationController _textFadeController;
  late Animation<double> _textOpacity;
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();

    // Initialize checkmark animation
    _checkmarkController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _checkmarkScale = CurvedAnimation(
      parent: _checkmarkController,
      curve: Curves.elasticOut,
    );

    // Initialize text fade-in animation
    _textFadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _textOpacity = CurvedAnimation(
      parent: _textFadeController,
      curve: Curves.easeIn,
    );

    // Initialize confetti animation
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 3));

    // Start the animations sequentially
    _startSuccessAnimation();
  }

  void _startSuccessAnimation() {
    // Play confetti, then checkmark, then text
    _confettiController.play();
    _checkmarkController.forward().whenComplete(() {
      _textFadeController.forward();
    });
  }

  @override
  void dispose() {
    _checkmarkController.dispose();
    _textFadeController.dispose();
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(
        children: [
          // Confetti
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
              colors: const [
                Colors.red,
                Colors.blue,
                Colors.green,
                Colors.yellow,
              ],
              gravity: 0.4,
            ),
          ),
          // Success content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScaleTransition(
                  scale: _checkmarkScale,
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.greenAccent,
                    size: 100,
                  ),
                ),
                const SizedBox(height: 20),
                FadeTransition(
                  opacity: _textOpacity,
                  child: Text(
                    'Connected Successfully!',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
