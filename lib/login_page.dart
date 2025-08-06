import 'package:flutter/material.dart';
import 'package:latihan_mobile/new_widget.dart';
import 'package:latihan_mobile/register.dart';
import 'package:latihan_mobile/widget/Costum_button.dart';
import 'package:latihan_mobile/widget/costum_textfield.dart';
import 'package:latihan_mobile/widget/judul.dart';
import 'package:latihan_mobile/widget/nama.dart';
import 'package:latihan_mobile/widget/password.dart';
import 'package:latihan_mobile/widget/registsterbtn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _Login();
}

class _Login extends State<LoginPage> {
  String statuslogin = "login status";
  TextEditingController txtusername = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(child: Judul(text1: "welcome", warna1: Colors.amber),),

            Center(
              child: Container(child: Image.asset('assets/image/hindia.jpg')),
            ),

           Judul(text1: "isi pw dulu mas", warna1: Colors.black),
            Container(child: CostumTextfield(hintText: "nama", controller: txtusername,obscureText: false,isNumber: false,)),
            Container(child: CostumTextfield(hintText: "password", controller: txtpassword,obscureText: true,isNumber: false,)),
            const SizedBox(height: 40),

            Container(
              width: double.infinity,
              child: CostumButton(
                text: "Login",
                textColour: Colors.yellow,
                onPressed: () => {
                  if (txtusername.text == "Arsya" && txtpassword.text == "12345")
                    {
                      setState(() {
                        statuslogin = "berhasil";
                      }),
                    }
                  else
                    {
                      setState(() {
                        statuslogin = "gagal";
                      }),
                    },
                },
              ),
            ),

            Container(
              width: double.infinity,
              
              child: CostumButton(
                text: "Register",
                textColour: Colors.blue,
                onPressed: () => {
               Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => const Register()),
             )
           },
              ),
            ),

            Text(statuslogin),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
