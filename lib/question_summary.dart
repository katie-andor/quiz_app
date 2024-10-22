import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

Color checkIfCorrect(Map<String, Object> data){
    if(data['user_answer'] == data['correct_answer']){
      return const Color.fromARGB(255, 77, 255, 83);
    }else{
      return const Color.fromARGB(255, 255, 71, 58);
    }
}

  @override
  Widget build(context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: checkIfCorrect(data)
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: GoogleFonts.assistant(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'You chose: ${data['user_answer']}',
                          style: GoogleFonts.assistant(
                            color: const Color.fromARGB(255, 214, 125, 255),
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'The answer was: ${data['correct_answer']}',
                          style: GoogleFonts.assistant(
                            color: const Color.fromARGB(255, 136, 226, 247),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
