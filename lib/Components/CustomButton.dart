import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/utils/constants.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CustomButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: AppConstants.mainAppColor, borderRadius: BorderRadius.circular(12)),
        width: double.infinity,
        child: Center(child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Text(title, style: GoogleFonts.openSans(fontSize: 16),),
        )),
      ),
    );
  }
}
