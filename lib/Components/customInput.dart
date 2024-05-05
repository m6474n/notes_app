import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomInput extends StatelessWidget {
  final String label;
  final int? maxlines;
  final TextEditingController controller;
  const CustomInput({super.key, required this.label,  this.maxlines, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        controller: controller,
        maxLines: maxlines,
        decoration: InputDecoration(
            contentPadding:
            EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            hintText: label,
            hintStyle: GoogleFonts.openSans(fontSize: 16),
            filled: true,
            fillColor: Colors.grey.shade100,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}
