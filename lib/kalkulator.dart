import 'package:flutter/material.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({super.key});

  @override
  State<Kalkulator> createState() => _kalkulator();
}

class _kalkulator extends State<Kalkulator> {
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();
  String hasil = '';

  void hitung(String operator) {
    double a = double.tryParse(angka1.text) ?? 0;
    double b = double.tryParse(angka2.text) ?? 0;
    double res = 0;

    switch (operator) {
      case '+':
        res = a + b;
        break;

      case '-':
        res = a - b;
        break;

      case 'x':
        res = a * b;
        break;

      case '/':
        if (b != 0) {
          res = a / b;
        } else {
          hasil = "tidak bisa di bagi 0";
          return;
        }
        break;
    }
    setState(() {
      hasil = res.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("kalkulator"),),
    body: Container(child: Column(
      
    ),),
    );
  }
}
