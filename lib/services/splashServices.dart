import 'dart:async';

import 'package:get/get.dart';
import 'package:notes_app/Screens/HomeScreen.dart';

class SplashServices{


  changePage(){
    Timer(Duration(seconds: 3),(){
      Get.offAll(Home());
    });


  }



}