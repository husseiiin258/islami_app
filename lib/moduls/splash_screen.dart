import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/layout/home_layout.dart';

class SplashScreen extends StatelessWidget{
  static const String routeName = "splash-screen";
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    Timer(
        const Duration(seconds: 3,), () {
          Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    return Scaffold(
      body: Image.asset("assets/images/splashScreen_background.png" ,
      width:mediaQuery.width,
      height: mediaQuery.height,
      fit: BoxFit.cover,),
    );
  }
}