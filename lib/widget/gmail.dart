import 'package:flutter/material.dart';

class Gmail extends StatelessWidget {
  final TextEditingController controller;

  const Gmail({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          hintText: "Gmail",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
