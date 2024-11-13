import 'package:banko/theme/Pallete.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final bgColor = Pallete().backgroundColor;
  final buttonColor = Pallete().buttonColor;
  final buttonTextColor = Pallete().buttonTextColor;
  final headlineTextColor = Pallete().headlineText;
  final paragraphTextColor = Pallete().paragraphText;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 12)
                    .copyWith(top: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    colors: [
                      HexColor("#5854e7"),
                      HexColor("#cad2f3"),
                      HexColor("#fff"),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  children: [
                    Text('eg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
