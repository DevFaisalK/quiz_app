import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'start_screen.dart';
import 'questions_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    // TODO: implement createState
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'question-screen') {
      screenWidget = const QuestionScreen();
    }


    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Container(

          decoration:const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Color.fromARGB(254, 95, 59, 196),
              ] ,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,

        ),
      ),
    );

  }
}


