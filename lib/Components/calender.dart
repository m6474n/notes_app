import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/calender_controller.dart';
import 'package:notes_app/utils/constants.dart';

class CustomCalender extends StatelessWidget {
  const CustomCalender({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CalenderController(),
      builder: (controller) {
        return  EasyDateTimeLine(
          activeColor: AppConstants.mainAppColor,
          initialDate: DateTime.now(),
          onDateChange: (selectedDate) {
           controller.updateDate(selectedDate);
          },
        );
      }
    );
  }
}

