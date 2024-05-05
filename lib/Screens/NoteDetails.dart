import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/Components/CustomButton.dart';
import 'package:notes_app/Components/customInput.dart';
import 'package:notes_app/Screens/HomeScreen.dart';
import 'package:notes_app/services/Api.dart';

class NoteDetails extends StatefulWidget {
  String? title, description;
  int? id;
  NoteDetails({super.key, this.title, this.description, this.id});

  @override
  State<NoteDetails> createState() => _NoteDetailsState();
}

class _NoteDetailsState extends State<NoteDetails> {
  Api service = Api();
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomInput(
                label: widget.title ?? "Title",controller: titleController,
              ),
              CustomInput(
                label: widget.description ?? "Description",controller: bodyController,
                maxlines: 25,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Container(
            height: 50,
            child: Row(
              children: [
                Expanded(child: CustomButton(title: "Save", onTap: () {
                service.createNote(titleController.text, bodyController.text);
                titleController.clear();bodyController.clear();
                Get.offAll(Home());
                })),
                SizedBox(
                  width: 8,
                ),
                Expanded(child: CustomButton(title: "Delete", onTap: () {
                  service.deleteNote(widget.id!);
                  Get.to(Home());
                }))
              ],
            )),
      ),
    );
  }
}
