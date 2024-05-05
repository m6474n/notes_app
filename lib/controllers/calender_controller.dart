import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:get/get.dart';

class CalenderController extends GetxController{
  DateTime focusDate = DateTime.now();
  final EasyInfiniteDateTimelineController dateTimeController =
  EasyInfiniteDateTimelineController();


  updateDate(newDate){
    focusDate = newDate;
        update();
  }



}
