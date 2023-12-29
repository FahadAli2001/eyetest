import 'package:eyetest/const/colors.dart';
import 'package:flutter/material.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
          padding:const EdgeInsets.symmetric(
        horizontal: 25,vertical: 15
      ),
      child: Column(
        children: [
        const  SizedBox(
            height: 40,
          ),
          Row(
            children: [
              GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("assets/Back.png")),
            const  SizedBox(
                width: 80,
              ),
            const  Text("LEVELS",style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900
                  ),),
            ], 
          ),
        const  SizedBox(
            height: 50,
          ),
          Image.asset("assets/level1_btn.png"),
          const  SizedBox(
            height: 20,
          ),
          Image.asset("assets/level2_btn.png"),
          const  SizedBox(
            height: 20,
          ),
          Image.asset("assets/level3_btn.png"),
        ],
      )),
    );
  }
}