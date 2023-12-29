import 'package:eyetest/const/colors.dart';
import 'package:eyetest/views/level1_completed_screen.dart';
import 'package:flutter/material.dart';

class Level1Screen extends StatefulWidget {
  const Level1Screen({super.key});

  @override
  State<Level1Screen> createState() => _Level1ScreenState();
}

class _Level1ScreenState extends State<Level1Screen> {
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
            const  Text("LEVEL 1",style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900
                  ),),
            ], 
          ),
        const  SizedBox(
            height: 30,
          ),
           const  Text("Guess The Number",style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold
                  ),),
           const  SizedBox(
            height: 40,
          ),
          Image.asset("assets/t1.png"),
           const  SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/6.png"),
              GestureDetector(
                onTap: 
                (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  =>const Level1CompletedScreen()));
                },
                child: Image.asset("assets/12.png")),
              Image.asset("assets/18.png"),
            ],
          ),
           const  SizedBox(
            height: 50,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/7.png"),
              Image.asset("assets/27.png"),
              Image.asset("assets/15.png"),
            ],
          ),
        ],
      )),
    );
  }
}