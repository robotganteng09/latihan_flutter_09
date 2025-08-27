import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_mobile/controller/nav_controller.dart';
import 'package:latihan_mobile/pages/footballPlayer.dart';
import 'package:latihan_mobile/pages/kalkulator.dart';
import 'package:latihan_mobile/login_page.dart';
import 'package:latihan_mobile/pages/profilePage.dart';


class NavbarPage extends StatelessWidget {
  NavbarPage({super.key});

   NavController navC = Get.put(NavController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: navC.pages[navC.selectedIndex.value], 
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navC.selectedIndex.value,
          onTap: navC.changeIndex, 
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: "Kalkulator",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.sports_soccer), label: "football"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
