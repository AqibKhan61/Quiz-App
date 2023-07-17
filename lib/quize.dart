import 'package:flutter/material.dart';
import 'package:practice3/questions.dart';
import 'package:practice3/Start_Screen.dart';
import 'package:practice3/result_Screen.dart';
import 'package:practice3/data/questionss.dart';

class Quize extends StatefulWidget{
    const Quize({super.key});

   

  @override
  State<Quize> createState(){
    return _QuizeState();
  }

}

class _QuizeState extends State<Quize>{
  List<String> selectedAnswers = [];
  var activeScreen = 'start-Screen';
  
   void switchScreen(){
    setState((){
      activeScreen = 'question-Screen';
         });
 }
  

   void chooseAnswers(String answer){
    selectedAnswers.add(answer);

    
      if(selectedAnswers.length == questions.length){
        setState(() {
          activeScreen='result-Screen';
        });
        
  }
   }

     void restartQuize(){
          setState(() {
            selectedAnswers=[];
            activeScreen='question-Screen';
          });
    }

  
    @override
  Widget build(context){
    Widget screenWidget = startScreen(switchScreen);
     if(activeScreen== 'result-Screen'){
    screenWidget =  resultScreen(chosenAnswers: selectedAnswers,onRestart: restartQuize,);
   }

    if(activeScreen=='question-Screen'){
      screenWidget =  Questions(onSelected: chooseAnswers,);
    }

  
    return  MaterialApp(
     home: Scaffold(
      body: Container(
        child: screenWidget,
      ),
     )
        );

  }
  
}