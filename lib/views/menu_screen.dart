import 'package:eyetest/const/colors.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const  EdgeInsets.symmetric(horizontal: 25,vertical: 15),
        child: Column(
         
          children: [
          const  SizedBox(
              height:70,
            ),
              Center(
               child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                 child:const Text("Close Menu",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 18
                         ),),
               ),
             ),
             const  SizedBox(
                          height: 150,
                         ),
             const Text("Share",
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize:30
                         ),),
                       const  SizedBox(
                          height: 20,
                         ),
                         const Text("About",
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize:30
                         ),),
                         const  SizedBox(
                          height: 20,
                         ),
                         const Text("Contact Us",
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize:30
                         ),),
          ],
        ),
      ),
    );
  }
}