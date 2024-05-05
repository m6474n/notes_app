import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/utils/constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> catList = ['All', 'Important', 'Study', 'To-Do', 'Shopping'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(

        height: 60,
        padding: EdgeInsets.only(top: 20),
        width: double.infinity,
        child: ListView.builder(
          itemCount: catList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
          return Category(title: catList[index], borderColor: index==0 ? AppConstants.mainAppColor:Colors.grey ,activeColor: index==0 ? AppConstants.mainAppColor:Colors.transparent,);
        }),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final Color? activeColor, textColor, borderColor;
  const Category({super.key, required this.title, this.activeColor, this.textColor, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
            color: activeColor,
            borderRadius: BorderRadius.circular(12),border: Border.all(color:borderColor??Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
          child: Text(title, style: GoogleFonts.openSans(color : textColor, ),),
        ),
      ),
    );
  }
}
