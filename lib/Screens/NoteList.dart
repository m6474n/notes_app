import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/Screens/NoteDetails.dart';
import 'package:notes_app/controllers/notes_controller.dart';
import 'package:notes_app/services/Api.dart';

class NoteList extends StatefulWidget {
  const NoteList({super.key});

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
Api service = Api();

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: NotesController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, ),
            child: Container(
              height: 500,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
                  itemCount: controller.noteList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        Get.to(()=>NoteDetails(title: controller.noteList[index]['title'],description:controller.noteList[index]['body'],id: controller.noteList[index]['id'],));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors
                              .primaries[Random().nextInt(Colors.primaries.length)]
                              .withOpacity(0.3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: OverflowBox(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.noteList[index]['title'],
                                  style: GoogleFonts.openSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Flexible(
                                  child: Text(controller.noteList[index]['body'],
                                      style: GoogleFonts.openSans(fontSize: 12)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          );
        });
  }
}
