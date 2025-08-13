import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:latihan_mobile/pages/edit_player_page.dart';
import 'package:latihan_mobile/pages/footballPlayer.dart';
import 'package:latihan_mobile/pages/kalkulator.dart';
import 'package:latihan_mobile/routes/routes.dart';

class AppPage {
  static final pages = [
    GetPage(name: AppRoutes.kalkulatorPage, page: ()=> Kalkulator()),
    GetPage(name: AppRoutes.footballPage, page: ()=> Footballplayer()),
    GetPage(name: AppRoutes.editplayer, page: ()=> EditPlayerPage(index: Get.arguments))
  ];
}
