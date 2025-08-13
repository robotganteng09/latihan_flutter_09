import 'package:get/get.dart';
import 'package:latihan_mobile/model/player_model.dart';

class FootballplayerController extends GetxController {
  var players = <PlayerModel>[
    PlayerModel(
      image: "assets/image/mbappe.jpeg",
      nama: "Mbappe",
      number: 7,
      position: "cf",
    ),
    PlayerModel(
      image: "assets/image/bellingham.jpg",
      nama: "Bellingham",
      number: 10,
      position: "cmf",
    ),
    PlayerModel(
      image: "assets/image/vini.jpeg",
      nama: "Vinicious",
      number: 10,
      position: "lw",
    ),
    PlayerModel(
      image: "assets/image/vazques.jpeg",
      nama: "Vazques",
      number: 20,
      position: "cb",
    ),
  ].obs;

  void updatePlayer(int index, PlayerModel updated) {
    if (index >= 0 && index < players.length) {
      players[index] = updated;
    }
  }
}
