import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marketi/core/constant/string.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Routes.onBoarding);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(child: Image.asset('assets/images/Logo_Splash_Screen.png')),
    );
  }
}
