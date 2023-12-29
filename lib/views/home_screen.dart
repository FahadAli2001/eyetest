import 'package:eyetest/const/colors.dart';
import 'package:eyetest/views/level1_screen.dart';
import 'package:eyetest/views/levels_screen.dart';
import 'package:eyetest/views/menu_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
        child: Column(
          children: [
          const  SizedBox(
              height: 40,
            ),
            Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            const  Center(
                child:    Text("Color Blind Test ",style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w900
                  ),),
              ),
               
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>
                  const  MenuScreen()));
                  },
                  child: Image.asset("assets/Menu.png")),
              ],
            ),

          const  SizedBox(
              height: 70,
            ),

            Image.asset("assets/logo.png"),
            const  SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)
                =>const LevelScreen()));
              },
              child: Image.asset("assets/level_btn.png")),
             const  SizedBox(
              height:200,
            ),
            GestureDetector(
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                =>const Level1Screen()));
              },
              child: Image.asset("assets/play_btn.png")),
          ],
        ),
      ),
    );
  }
}