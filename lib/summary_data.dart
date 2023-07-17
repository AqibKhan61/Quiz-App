import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class QuestionSummary extends StatelessWidget{
const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object >> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data){
          return Row(children: [
            Text(((data['questionIndex'] as int) + 1).toString(),
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 255, 255, 253),
              fontWeight: FontWeight.bold,
              fontSize: 25,
               
            ),
            
            ),
            Expanded(
              child: Column(children: [
                Text(data['question'] as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 236, 232, 221),
                  fontWeight: FontWeight.normal,
                  fontSize: 15,

                ),
                textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(data['correctAnswer'] as String,
                 style: GoogleFonts.lato(
                 color: const Color.fromARGB(255, 255, 255, 253),
                 fontWeight: FontWeight.bold,
                 
               
            ),
                ),
                
                Text(data['userOption'] as String,
                 style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 255, 255, 253),
            ),
                ),
                const SizedBox(height: 15),
                
              ],),
            )
          
          ],
          );
          
        },
        ).toList(),
        ),
      ),
    );
  }
}