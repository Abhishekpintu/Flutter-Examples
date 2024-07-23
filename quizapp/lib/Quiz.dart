import 'package:flutter/material.dart';
import 'package:quizapp/Questions.dart';
import 'package:quizapp/startscreen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz>{

  Widget? activeScreen;

  @override
  void initState() {
    activeScreen =  startscreen(switchScreen);
    super.initState();
  }
  void switchScreen(){
    setState(() {
      activeScreen =  const Questions();
    });
  }

  @override
  Widget build( context) {
   return (MaterialApp(
     home: Scaffold(
       body: Container(
           decoration: const BoxDecoration(
               gradient: LinearGradient(colors: [
                 Color.fromRGBO(137, 35, 255, 1),
                 Color.fromRGBO(111, 21, 255, 1)
               ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
           child: activeScreen
       ),
     ),
   ));
  }

}