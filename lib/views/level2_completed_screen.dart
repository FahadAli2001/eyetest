import 'package:eyetest/const/colors.dart';
import 'package:eyetest/views/level3_screen.dart';
import 'package:flutter/material.dart';

class Level2CompletedScreen extends StatefulWidget {
  const Level2CompletedScreen({super.key});

  @override
  State<Level2CompletedScreen> createState() => _Level2CompletedScreenState();
}

class _Level2CompletedScreenState extends State<Level2CompletedScreen> {
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
           Center(child: Image.asset("assets/t2.png")),
            const  SizedBox(
            height: 50,
          ),
           const  Center(
            child:    Text("15",style: TextStyle(
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
              =>const Level3Screen()));
            },
            child: Image.asset("assets/l3_btn.png"))
        ],
      )),
    );
  }
}