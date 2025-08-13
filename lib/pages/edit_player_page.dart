import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_mobile/controller/edit_player_controller.dart';

import 'package:latihan_mobile/controller/footballplayer_controller.dart';
import 'package:latihan_mobile/widget/Costum_button.dart';

class EditPlayerPage extends StatelessWidget {
  
  final int index;
  final fc = Get.find<FootballplayerController>();
 final ec = Get.put(EditPlayerController());


  EditPlayerPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final player = fc.players[index];
    final nameController = TextEditingController(text: player.nama);
    final positionController = TextEditingController(text: player.position);
    final numberController = TextEditingController(
      text: player.number.toString(),
    );

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(player.image, height: 100),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Nama"),
            ),
            TextField(
              controller: positionController,
              decoration: const InputDecoration(labelText: "Posisi"),
            ),
            TextField(
              controller: numberController,
              decoration: const InputDecoration(labelText: "Nomor Punggung"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
           CostumButton(
              text: "Save",
              textColour: const Color.fromARGB(122, 79, 193, 13),
              onPressed: () {
                ec.savePlayer(
                  index,
                  nameController.text,
                  positionController.text,
                  int.parse(numberController.text),
                );
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
