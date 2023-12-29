import 'dart:async';

import 'package:eyetest/views/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
 
    super.initState();
    Timer(const Duration(seconds: 4), () { 
      Navigator.push(context, MaterialPageRoute(builder: (context)
      =>const HomeScreen()));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/splash_screen.png",fit: BoxFit.fill,),
    );
  }
}