import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:notes_app/services/splashServices.dart';
import 'package:notes_app/utils/constants.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  SplashServices services = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

services.changePage();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Lottie.asset('./assets/logo.json',height: 200)),);
  }
}
