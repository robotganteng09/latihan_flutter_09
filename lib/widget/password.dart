import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  final TextEditingController controller;

  const Password({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
