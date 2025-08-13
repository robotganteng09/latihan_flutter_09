import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:latihan_mobile/controller/footballplayer_controller.dart';
import 'package:latihan_mobile/routes/routes.dart';

class Footballplayer extends StatelessWidget {
  Footballplayer({super.key});

  final FootballplayerController foootbalPlayerController = Get.put(
    FootballplayerController(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Real Madrid Players")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: foootbalPlayerController.players.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(
                  foootbalPlayerController.players[index].image,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(foootbalPlayerController.players[index].nama),
                subtitle: Text(foootbalPlayerController.players[index].position),
                onTap: () {
                  print(
                    "klik pemain ${foootbalPlayerController.players[index]}",
                  );
                  Get.toNamed(AppRoutes.editplayer, arguments: index);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
