import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData? icon;
  final TextEditingController? controller;
   bool? isPassword;





   CustomTextFormField({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.icon,
    this.controller,
     this.isPassword

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        suffixIcon: icon != null ? Icon(icon) : null,
        suffixIconColor: Colors.grey,
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.grey),
        hintText: hintText,
        helperStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

// Example usage:
class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
              labelText: 'Email',
              hintText: 'Enter your email',
              icon: Icons.email_outlined,
            ),
            // Add more CustomTextField instances as needed
          ],
        ),
      ),
    );
  }
}
