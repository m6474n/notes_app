import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/Components/SearchBar.dart';
import 'package:notes_app/Components/calender.dart';
import 'package:notes_app/Components/categories.dart';
import 'package:notes_app/Screens/NoteDetails.dart';
import 'package:notes_app/Screens/NoteList.dart';
import 'package:notes_app/utils/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 16,),
        SearchField(),
        CustomCalender(),
        Categories(),
        NoteList(),
        
        ],),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          Get.to(NoteDetails());
        },
        child: Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
