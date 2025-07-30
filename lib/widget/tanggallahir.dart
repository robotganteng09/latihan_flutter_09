import 'package:flutter/material.dart';

class TanggalLahir extends StatefulWidget {
  final DateTime? selectedDate;
  final ValueChanged<DateTime> onDateChanged;

  const TanggalLahir({
    super.key,
    this.selectedDate,
    required this.onDateChanged,
  });

  @override
  State<TanggalLahir> createState() => _TanggalLahirState();
}

class _TanggalLahirState extends State<TanggalLahir> {
  late DateTime? _date = widget.selectedDate;

  void _pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _date ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _date = picked;
      });
      widget.onDateChanged(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final displayText = _date != null
        ? "${_date!.day}-${_date!.month}-${_date!.year}"
        : "Pilih Tanggal Lahir";

    return InkWell(
      onTap: _pickDate,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(displayText),
      ),
    );
  }
}
