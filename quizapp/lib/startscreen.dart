import 'package:flutter/material.dart';

class startscreen extends StatelessWidget {
  const startscreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Center(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children:[
            Image.asset("assets/images/quiz-logo.png",width: 200, color: const Color.fromARGB(233, 237, 223, 252),),
            const SizedBox(height: 50,),
            const Text("Learn Flutter in a fun way!!!", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
            const SizedBox(height: 50,),
            OutlinedButton.icon(onPressed: (){startQuiz();}, style: OutlinedButton.styleFrom(foregroundColor: Colors.white), icon: const Icon(Icons.arrow_right_alt), label: const Text("Start Quiz"),)
          ]
      ),
    );
  }
}