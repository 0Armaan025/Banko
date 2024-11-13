import 'package:banko/theme/Pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  final bgColor = Pallete().backgroundColor;
  final buttonColor = Pallete().buttonColor;
  final buttonTextColor = Pallete().buttonTextColor;
  final headlineTextColor = Pallete().headlineText;
  final paragraphTextColor = Pallete().paragraphText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Center(
                child: Text(
                  "Verify Phone",
                  style: GoogleFonts.poppins(
                      color: headlineTextColor, fontSize: 26),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Code has been sent to +91 *******000",
                  style: GoogleFonts.poppins(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width * 0.7,
                fieldWidth: 40,
                style: TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                otpFieldStyle: OtpFieldStyle(focusBorderColor: Colors.black),
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Didn't get OTP Code ?",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Resend Code",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: buttonColor,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.06,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Verify",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
