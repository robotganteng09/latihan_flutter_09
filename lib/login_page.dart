import 'package:flutter/material.dart';
import 'package:latihan_mobile/new_widget.dart';
import 'package:latihan_mobile/register.dart';
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
            Text(
              "Welcome to our aplication",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.amberAccent,
              ),
            ),

            Center(
              child: Container(child: Image.asset('assets/image/hindia.jpg')),
            ),

            Text(
              "Please fill username and password below",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.amber,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                controller: txtusername,
                decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),

              child: TextField(
                controller: txtpassword,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 40),

            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  if (txtusername.text == "admin" &&
                      txtpassword.text == "12345") {
                    setState(() {
                      statuslogin = "sukses login";
                    });
                  } else {
                    setState(() {
                      statuslogin = "gagal";
                    });
                  }
                  print("status:" + statuslogin);
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ),

            Text(statuslogin),
            Registsterbtn(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Register()),
                );
              },
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
