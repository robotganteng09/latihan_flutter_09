import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:latihan_mobile/controller/kalkulator_controller.dart';
import 'package:latihan_mobile/widget/Costum_button.dart';
import 'package:latihan_mobile/widget/costum_textfield.dart';
import 'package:latihan_mobile/widget/nama.dart';

class Kalkulator extends StatelessWidget {
  Kalkulator({super.key});

  final KalkulatorController kalkulatorController = Get.put(
    KalkulatorController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("kalkulator")),
      body: Column(
        children: [
          CostumTextfield(
            hintText: "angka1",
            controller: kalkulatorController.txtangka1,
            isNumber: true,
          ),
          CostumTextfield(
            hintText: "angka2",
            controller: kalkulatorController.txtangka2,
            isNumber: true,
          ),
          Row(
            children: [
              CostumButton(
                text: '+',
                textColour: Colors.amberAccent,
                onPressed: kalkulatorController.tambah,
              ),
              CostumButton(text: "-", textColour: Colors.amberAccent, onPressed: kalkulatorController.kurang),
            ],
          ),
          Row(
            children: [
              CostumButton(
                text: "x",
                textColour: Colors.amber,
                onPressed: kalkulatorController.kali,
              ),
              CostumButton(
                text: "/",
                textColour: Colors.amberAccent,
                onPressed: kalkulatorController.bagi,
              ),
            ],
          ),
          Obx(() {
            return Text("hasil" + kalkulatorController.textHasil.value);
          }),
          CostumButton(text: "c", textColour: Colors.amberAccent, onPressed: kalkulatorController.reset),
        ],
      ),
    );
  }
}
