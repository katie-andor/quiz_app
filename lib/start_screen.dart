import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 320,
            height: 320,
            padding: const EdgeInsets.all(60),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 138, 226),
              borderRadius: BorderRadius.circular(160),
              border: Border.all(
                color: const Color.fromARGB(255, 29, 29, 29),
                )
            ),
            child: Image.asset(
              'assets/assets/images/quiz-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 138, 226),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color.fromARGB(255, 29, 29, 29),
              ),
            ),
            child: Text(
              "Try your luck on our quiz",
              style: GoogleFonts.assistant(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                backgroundColor: const Color.fromARGB(255, 255, 138, 226),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            icon: const Icon(
              Icons.arrow_circle_right_outlined,
              size: 40,
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 255, 138, 226),
            ),
            onPressed: startQuiz,
            label: Text(
              "Start Quiz",
              style: GoogleFonts.assistant(
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
