//just return a text wdiget and be stateful
//return material app and be stateful
import 'package:flutter/material.dart';

class QuestionScreens extends StatefulWidget{
  const QuestionScreens({super.key});
  
  @override
  State<QuestionScreens> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreens> {

@override
Widget build(context){
  return const Text(
    "Question Screen"
  );
}
}