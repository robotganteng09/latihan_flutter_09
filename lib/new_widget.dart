import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  final String text;
  final VoidCallback button;
  const NewWidget({super.key, required this.text,required this.button});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: button,
          child: Text(text),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
          ),
        ),
      ),
    );
  }
}
