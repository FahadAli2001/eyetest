import 'package:eyetest/const/colors.dart';
import 'package:eyetest/views/home_screen.dart';
import 'package:flutter/material.dart';

class Level3CompletedScreen extends StatefulWidget {
  const Level3CompletedScreen({super.key});

  @override
  State<Level3CompletedScreen> createState() => _Level3CompletedScreenState();
}

class _Level3CompletedScreenState extends State<Level3CompletedScreen> {
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
           Center(child: Image.asset("assets/t3.png")),
            const  SizedBox(
            height: 50,
          ),
           const  Center(
            child:    Text("6",style: TextStyle(
                      color: Colors.white,
                      fontSize:22,
                      fontWeight: FontWeight.w900
                    ),),
          ),
        const  SizedBox(
            height:15,
          ),
           const  Center(
            child:    Text("All Level Completed",style: TextStyle(
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
              =>const HomeScreen()));
            },
            child: Image.asset("assets/home.png"))
        ],
      )),
    );
  }
}