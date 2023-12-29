import 'package:eyetest/const/colors.dart';
import 'package:eyetest/views/level2_screen.dart';
import 'package:flutter/material.dart';

class Level1CompletedScreen extends StatefulWidget {
  const Level1CompletedScreen({super.key});

  @override
  State<Level1CompletedScreen> createState() => _Level1CompletedScreenState();
}

class _Level1CompletedScreenState extends State<Level1CompletedScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
          padding:const EdgeInsets.symmetric(
        horizontal: 25,vertical: 15
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const  SizedBox(
            height: 40,
          ),
        const  Center(
            child:    Text("Welldone",style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900
                    ),),
          ),
           
          
        const  SizedBox(
            height: 50,
          ),
           Center(child: Image.asset("assets/t1.png")),
            const  SizedBox(
            height: 50,
          ),
           const  Center(
            child:    Text("12",style: TextStyle(
                      color: Colors.white,
                      fontSize:22,
                      fontWeight: FontWeight.w900
                    ),),
          ),
        const  SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)
              =>const Level2Screen()));
            },
            child: Image.asset("assets/l2_btn.png"))
        ],
      )),
    );
  }
}