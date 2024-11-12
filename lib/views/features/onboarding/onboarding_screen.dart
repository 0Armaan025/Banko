import 'dart:ui';

import 'package:banko/theme/Pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final bgColor = Pallete().backgroundColor;
  final buttonColor = Pallete().buttonColor;
  final buttonTextColor = Pallete().buttonTextColor;
  final headlineTextColor = Pallete().headlineText;
  final paragraphTextColor = Pallete().paragraphText;

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Register',
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      finishButtonTextStyle: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      onFinish: () {},
      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: headlineTextColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        'Login',
        style: TextStyle(
          fontSize: 16,
          color: headlineTextColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {},
      controllerColor: buttonColor,
      totalPage: 3,
      headerBackgroundColor: bgColor,
      pageBackgroundColor: bgColor,
      background: [
        Image.network(
          'https://i.ibb.co/GRMCNF9/Screenshot-2024-11-12-152817-removebg-preview.png',
          height: 200,
        ),
        Image.network(
          'https://img.freepik.com/free-vector/e-wallet-concept-illustration_114360-7561.jpg?ga=GA1.1.1919477381.1731340095&semt=ais_hybrid',
          height: 400,
          width: 350,
        ),
        Image.network(
          'https://img.freepik.com/premium-vector/mobile-payment-via-credit-card-secure-online-payment-transaction-with-phone-electronic-bank-payment_530733-3438.jpg?ga=GA1.1.1919477381.1731340095&semt=ais_hybrid',
          height: 350,
          width: 350,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 200),
              Text(
                'Banko',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: headlineTextColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'to have the best experience in banking.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: paragraphTextColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                "Deposit , Withdrawal and transactions seemlessly",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: headlineTextColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 370,
              ),
              Text(
                'Start now!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: headlineTextColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Where sending of money can be done with snaps, 24/7 without any problems.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: paragraphTextColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
