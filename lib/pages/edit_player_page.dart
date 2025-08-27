import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_mobile/controller/edit_player_controller.dart';

import 'package:latihan_mobile/controller/footballplayer_controller.dart';
import 'package:latihan_mobile/model/player_model.dart';
import 'package:latihan_mobile/widget/Costum_button.dart';

class EditPlayerPage extends StatelessWidget {
  EditPlayerController editPlayerController = Get.put(EditPlayerController());

  EditPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
        
            TextField(
              controller: editPlayerController.nama,
              decoration: const InputDecoration(labelText: "Nama "),
            ),
            TextField(
              controller: editPlayerController.posisi,
              decoration: const InputDecoration(labelText: "Posisi"),
            ),
            TextField(
              controller: editPlayerController.nomer,
              decoration: const InputDecoration(labelText: "Nomor Punggung"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            CostumButton(
              text: "Save",
              textColour: const Color.fromARGB(122, 79, 193, 13),
              onPressed: () {
                editPlayerController.save();
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
