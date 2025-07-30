import 'package:flutter/material.dart';

class Nama extends StatelessWidget {
  final TextEditingController controller;

  const Nama({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          hintText: "Nama",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
