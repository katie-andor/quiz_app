import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AnswerButton extends StatelessWidget{
  const AnswerButton(
    {
      required this.answerText,
      required this.onTap, 
      super.key
    }
  );
   
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context){
    return 
    Container(
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          side: const BorderSide(
            color: Color.fromARGB(255, 29, 29, 29),
          ),
          padding: const EdgeInsets.symmetric(
            vertical:10,
            horizontal: 40,
          ),
          backgroundColor: const Color.fromARGB(255, 255, 138, 226),
          foregroundColor: Colors.white,
          // shape:const BeveledRectangleBorder(
      
          // ),
        ),
        
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: GoogleFonts.assistant(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ) 
        ),
      ),
    );
  }
}