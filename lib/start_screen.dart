import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
 Widget build (context){
    return  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
            opacity: 0.3,
            child: Image.asset('assets/images/quiz-logo.png',width: 300,)),
        const SizedBox(height: 80),
        const Text('Learn Flutter The fun way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),

        const SizedBox(height: 80),

        OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 163, 143, 236),

            ),
            icon: const Icon(Icons.double_arrow_outlined),
            label: const Text('button')),
      ],
    )) ;
  }

}

