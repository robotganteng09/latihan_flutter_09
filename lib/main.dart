import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:latihan_mobile/controller/nav_controller.dart';

import 'package:latihan_mobile/login_page.dart';
import 'package:latihan_mobile/pages/kalkulator.dart';
import 'package:latihan_mobile/register.dart';
import 'package:latihan_mobile/routes/pages.dart';
import 'package:latihan_mobile/routes/routes.dart';

void main() {
   Get.put(NavController());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
     initialRoute: AppRoutes.navbar,
     getPages: AppPage.pages,
    );
  }
}
