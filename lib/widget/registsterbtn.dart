import 'package:flutter/material.dart';

class Registsterbtn extends StatelessWidget {
  final VoidCallback onTap;

  const Registsterbtn({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: const Text(
        "Belum punya akun? Daftar di sini",
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
