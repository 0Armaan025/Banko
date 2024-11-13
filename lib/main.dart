import 'package:banko/views/features/auth/account_setup/account_setup_page.dart';
import 'package:banko/views/features/auth/otp_page/otp_page.dart';
import 'package:banko/views/features/auth/signup/signup_page.dart';
import 'package:banko/views/features/cool-loading-screen/cool_loading_screen.dart';
import 'package:banko/views/features/home/home_page.dart';
import 'package:banko/views/features/loading-success-screen/loading-success-screen.dart';
import 'package:banko/views/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
