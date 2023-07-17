import 'package:flutter/material.dart';
import 'package:practice3/buttons.dart';
import 'package:practice3/data/questionss.dart';
import 'package:google_fonts/google_fonts.dart';


class Questions extends StatefulWidget{
 const Questions({super.key, required this.onSelected});

 final void Function(String answer) onSelected;
  @override
  State<Questions> createState(){
  return _QuizeState();
  }
}

class _QuizeState extends State<Questions>{
  var questionIndex = 0;

  void answerQuestion(String selectedAnswers){
    widget.onSelected(selectedAnswers);
    setState(() {
      questionIndex++;
    });
  }

  
  @override
  Widget build(context){
    final currentQuestion = questions[questionIndex];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 10, 212) ,
      body: Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           Text(currentQuestion.Text,
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 24,
            fontWeight: FontWeight.bold,
            
          ),
          textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
      
          ...currentQuestion.getShuffled().map((item){
            return Buttons(anserText: item, 
            onTap:(){
              answerQuestion(item);
            },
            );
          }),
      
        ],),
      ),
    )
    );
    
  
  }
}