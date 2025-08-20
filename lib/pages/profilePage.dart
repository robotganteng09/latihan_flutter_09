import 'package:flutter/material.dart';
import 'package:latihan_mobile/widget/Costum_button.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Foto profil
            CircleAvatar(
              radius: 70,
              backgroundImage: const NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9YkiBAMR7KLOd3DF0_00zhCZCB5ZR6XVTbw&s",
              ),
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 20),

            // Nama
            const Text(
              "Arsya Muhammad Faisyar",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),

            // Keterangan
            const Text(
              "11 PPLG 2 • Absen: 9",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 30),

            // Card untuk info tambahan
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 15,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.school, color: Colors.blue),
                      title: const Text("Sekolah"),
                      subtitle: const Text("SMK RUS"),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                      onTap: () {},
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                      ),
                      title: const Text("Hobi"),
                      subtitle: const Text("Coding & Desain UI"),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Tombol aksi
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                  label: const Text("Edit Profile"),
                ),
                const SizedBox(width: 20),
                CostumButton(text: "logout", textColour: Colors.white, onPressed: (){})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
