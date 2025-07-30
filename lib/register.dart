import 'package:flutter/material.dart';
import 'package:latihan_mobile/login_page.dart';
import 'package:latihan_mobile/widget/button.dart';
import 'package:latihan_mobile/widget/gmail.dart';
import 'package:latihan_mobile/widget/jkelamin.dart';
import 'package:latihan_mobile/widget/nama.dart';
import 'package:latihan_mobile/widget/password.dart';
import 'package:latihan_mobile/widget/tanggallahir.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _Register();
}

class _Register extends State<Register> {
  TextEditingController namaController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController gmailController = TextEditingController();
  String? selectedGender = "Laki-laki";
    DateTime? selectedDate;

      void onDateChanged(DateTime date) {
    setState(() {
      selectedDate = date;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Register",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(height: 10),
              Nama(controller: namaController),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              Password(controller: passwordController),
              const SizedBox(height: 10),
              Gmail(controller: gmailController),
              const SizedBox(height: 10),
              JenisKelamin(
                selectedGender: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
              ),
              const SizedBox(height: 20,),
              TanggalLahir( onDateChanged: onDateChanged,),
              Button(
                text: "Submit",
                onTap: () {
                  
                  print("Nama: ${namaController.text}");
                  print("Gmail: ${gmailController.text}");

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
