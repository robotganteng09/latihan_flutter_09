import 'package:get/get.dart';
import 'package:latihan_mobile/controller/footballplayer_controller.dart';
import 'package:latihan_mobile/model/player_model.dart';
import 'package:flutter/material.dart';

class EditPlayerController extends GetxController {
  final fc = Get.find<FootballplayerController>();

   void savePlayer(int index, String nama, String position, int number) {
    final updated = PlayerModel(
      image: fc.players[index].image, 
      nama: nama,
      number: number,
      position: position,
    );
    fc.updatePlayer(index, updated);
  }
}
