import 'package:flutter/material.dart';
import 'package:quiz_app/question_screens.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState(){
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen = QuestionScreens();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 183, 17, 195),
              ],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
