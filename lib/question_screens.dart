//just return a text wdiget and be stateful
//return material app and be stateful
import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreens extends StatefulWidget {
  const QuestionScreens({super.key});

  @override
  State<QuestionScreens> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreens> {
  var currentQuestionIndex = 0;

  void answerQuestion(){
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map(
              (item) {
                return AnswerButton(
                  answerText: item,
                  onTap: answerQuestion,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
