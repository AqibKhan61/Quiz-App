import 'package:flutter/material.dart';
import 'package:practice3/summary_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice3/data/questionss.dart';

class resultScreen extends StatelessWidget{
  const resultScreen({super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;
 
  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary=[];
   
    for(var i=0; i<chosenAnswers.length;i++){
      summary.add({
        'questionIndex':i,
        'question':questions[i].Text,
        'correctAnswer':questions[i].answers[0],
        'userOption':chosenAnswers[i],
      }
      );
    } 
    return summary; 

    }
    
  

  @override
  Widget build(BuildContext context) {
    final SummaryData = getSummaryData();
    final TotalQuestion = questions.length;
    final NumberOfcorrect = SummaryData.where((data) {
      return data['userOption'] == data['correctAnswer'];
    }
    ).length;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 10, 212),
      body: Container(
        child:Center(
          
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your answer $NumberOfcorrect out of $TotalQuestion Are correct',
            style: GoogleFonts.lato(
              color: Color.fromARGB(255, 251, 255, 254),
              fontSize: 24,
              fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionSummary(SummaryData),
           const SizedBox(height: 50
           ),

            TextButton.icon(onPressed:onRestart,
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 250, 249, 245)
            ),
             icon:const  Icon(Icons.refresh),
            label: const Text('Restart-Quize'),
            )
           
            


        ]),
      ),
    ));
  
  }
}