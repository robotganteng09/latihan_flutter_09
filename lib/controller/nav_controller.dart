import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_mobile/pages/footballPlayer.dart';
import 'package:latihan_mobile/pages/kalkulator.dart';
import 'package:latihan_mobile/pages/profilePage.dart';
import 'package:latihan_mobile/routes/routes.dart';

class NavController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> pages = [Kalkulator(), Footballplayer(), Profilepage()];

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
