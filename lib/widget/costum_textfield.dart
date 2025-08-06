import 'package:flutter/material.dart';

class CostumTextfield extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  const CostumTextfield({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(decoration: InputDecoration(hint: Text(hintText,),),
    controller: controller,
    obscureText: obscureText,
    );
  }
}
