import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: "Email address",
          hintStyle: TextStyle(
            color: Colors.grey[600],
          ),
          labelText: "Email",
          labelStyle: TextStyle(
            color: const Color.fromARGB(255, 45, 45, 45),
          ),
        ),
      ),
    );
  }
}
