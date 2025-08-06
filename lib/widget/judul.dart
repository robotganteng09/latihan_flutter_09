import 'package:flutter/material.dart';

class Judul extends StatelessWidget {
  final String text1;
  final Color warna1;

  const Judul({super.key, required this.text1, required this.warna1});

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(text1, style: TextStyle(color: warna1,fontSize: 20)));
  }
}
