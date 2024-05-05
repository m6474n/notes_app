import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/controllers/search_controller.dart';
import 'package:notes_app/utils/constants.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SearchBarController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 24, bottom: 12),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                        hintText: "Search for notes",
                        hintStyle: GoogleFonts.openSans(fontSize: 16),
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.grey,
                          size: 32,
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(18))),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_active,
                        size: 32,
                        color: AppConstants.mainAppColor
                      ),
                    ))
              ],
            ),
          );
        });
  }
}
