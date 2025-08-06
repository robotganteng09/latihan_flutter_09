import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  final txtangka1 = TextEditingController();
  final txtangka2 = TextEditingController();
  var textHasil = "".obs;

  void tambah() {
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int hasilJumlah = angka1 + angka2;
    print("hasil jumlah " + hasilJumlah.toString());
    textHasil.value = hasilJumlah.toString();
  }

  void kurang() {
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int hasilJumlah = angka1 - angka2;
    print("hasil jumlah " + hasilJumlah.toString());
    textHasil.value = hasilJumlah.toString();
  }

  void kali() {
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int hasilJumlah = angka1 * angka2;
    textHasil.value = hasilJumlah.toString();
  }

  void bagi() {
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    if (angka2 == 0) {
      textHasil.value = "Tidak bisa bagi 0";
    } else {
      double hasil = angka1 / angka2;
      textHasil.value = hasil.toStringAsFixed(
        2,
      ); // hasil dengan 2 angka desimal
    }
  }

  void reset(){
     txtangka1.clear();
    txtangka2.clear();
    textHasil.value = "";
  }
}
