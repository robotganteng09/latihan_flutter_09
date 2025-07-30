import 'package:flutter/material.dart';

class JenisKelamin extends StatelessWidget {
  final String? selectedGender;
  final ValueChanged<String?> onChanged;

  const JenisKelamin({
    super.key,
    required this.selectedGender,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Pilih Jenis Kelamin:"),
        ListTile(
          title: const Text("Laki-laki"),
          leading: Radio<String>(
            value: "Laki-laki",
            groupValue: selectedGender,
            onChanged: onChanged,
          ),
        ),
        ListTile(
          title: const Text("Perempuan"),
          leading: Radio<String>(
            value: "Perempuan",
            groupValue: selectedGender,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
