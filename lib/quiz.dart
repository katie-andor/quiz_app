import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screens.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreens(
        onSelectAnswer: chooseAnswer,
      );
    });
  }

 void chooseAnswer(String answer) {
  selectedAnswers.add(answer);
  if (selectedAnswers.length == questions.length) {
    setState(() {
      activeScreen = ResultsScreen(
        chosenAnswers: selectedAnswers,
        restartQuiz: startOver, 
      );
    });
  }
}


void startOver(){
  setState(() {
    selectedAnswers = [];
    activeScreen = StartScreen(switchScreen);
  });
}

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //   colors: [
            //     Color.fromARGB(255, 192, 28, 66),
            //     Color.fromARGB(255, 183, 17, 195),
            //   ],
            // ),
            image: DecorationImage(
              image: AssetImage('assets/assets/images/background.jpg_large'),
              fit: BoxFit.cover
            )
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
