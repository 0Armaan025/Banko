import 'package:banko/common/custom_text_field/custom_text_field.dart';
import 'package:banko/theme/Pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final bgColor = Pallete().backgroundColor;
  final buttonColor = Pallete().buttonColor;
  final buttonTextColor = Pallete().buttonTextColor;
  final headlineTextColor = Pallete().headlineText;
  final paragraphTextColor = Pallete().paragraphText;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: bgColor,
        title: Text(
          "Welcome",
          style: GoogleFonts.poppins(),
        ),
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Text(
                  "Sign in or create an account",
                  style: GoogleFonts.poppins(
                    color: headlineTextColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Text(
                  "Your bank transactions will all be safe here, :) no need to worry!",
                  style: GoogleFonts.poppins(
                    color: Colors.grey[600],
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/128/149/149071.png',
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.height * 0.1,
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          size: 30,
                          weight: 100,
                          color: Colors.green,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: size.height * 0.06,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Continue",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(
                height: size.height * 0.20,
              ),
              Center(
                child: Text(
                  "Or continue with",
                  style: GoogleFonts.poppins(color: Colors.grey[700]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: size.height * 0.06,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/128/300/300221.png',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Continue with Google",
                      style: GoogleFonts.poppins(
                          color: buttonTextColor, fontSize: 14),
                    ),
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
