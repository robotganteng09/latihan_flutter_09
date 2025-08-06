import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CostumTextfield extends StatelessWidget {
  final String hintText;
  final bool isNumber;
  final TextEditingController controller;
  final bool obscureText;

  const CostumTextfield({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false, required this.isNumber,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hint: Text(hintText)),
      controller: controller,
      obscureText: obscureText,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      inputFormatters: isNumber?[ FilteringTextInputFormatter.digitsOnly]: [],
    );
  }
}
