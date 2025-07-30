import 'package:flutter/material.dart';
import 'package:latihan_mobile/login_page.dart';
import 'package:latihan_mobile/register.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Register()
    );
  }
}
