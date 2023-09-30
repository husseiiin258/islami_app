import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/core/provider/application_provider.dart';
import 'package:islami/layout/home_layout.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash-screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);
    Timer(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    return Scaffold(
      body: Image.asset(
        appProvider.isDark()
            ? "assets/images/Group 10.png"
            : "assets/images/splashScreen_background.png",
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}