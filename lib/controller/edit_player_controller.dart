import 'package:get/get.dart';
import 'package:latihan_mobile/controller/footballplayer_controller.dart';
import 'package:latihan_mobile/model/player_model.dart';
import 'package:flutter/material.dart';

class EditPlayerController extends GetxController {
  late int index;
  late FootballplayerController fc;
  final playerController = Get.find<FootballplayerController>();
  final nama = TextEditingController();
  final posisi = TextEditingController();
  final nomer = TextEditingController();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    index = Get.arguments as int;

    print("selected index" + index.toString());
    fc = Get.find<FootballplayerController>();
    final player = fc.players[index];
    nama.text = player.nama;
    posisi.text = player.position;
    nomer.text = player.number.toString();
    print("selected index: $index");
    print("selected player name: " + fc.players[index].nama);
  }

  void save() {
    playerController.updatePlayer(
      index,
      PlayerModel(
        image: playerController.players[index].image,
        nama: nama.text,
        number: int.tryParse(nomer.text) ?? 0,
        position: posisi.text,
      ),
    );
  }

  void onClose() {
    nama.dispose();
    posisi.dispose();
    nomer.dispose();
    super.onClose();
  }
}
