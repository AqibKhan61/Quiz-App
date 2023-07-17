import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class startScreen extends StatelessWidget{
 const  startScreen(this.startQuize, {super.key});
 final void Function() startQuize;




  @override
  Widget build(context){
    return Scaffold(
     backgroundColor: const Color.fromARGB(255, 6, 10, 212),
      
     // ignore: avoid_unnecessary_containers
     body:Container(
       child: Center(
        
          child:Column(children: [
            const Padding(padding:EdgeInsets.only(top: 80
             )),
         Image.asset('assets/images/quiz-logo.png',
         width: 280,
         color: const Color.fromARGB(166, 253, 254, 255),
         
         ),
         const SizedBox(
          height: 80
         ),
          Text(
          'Learn the flutter fun way!',
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 204, 213, 214,
            ),
            fontSize: 25,
            fontWeight: FontWeight.bold,
            
     
          ),
          
          ),
          const SizedBox(
          height: 60
         ),
          OutlinedButton.icon(
            onPressed: startQuize, 
            icon: const Icon(Icons.arrow_right_alt ),
             label: const Text('Start-Quize'),
             style: OutlinedButton.styleFrom
             (foregroundColor: Colors.cyanAccent,
             padding: const EdgeInsets.all(5),
             backgroundColor: const Color.fromARGB(255, 60, 43, 211)
             
             ),
             
             )
          
        ],
        )
        ),
     ),
      




      
      
     
        );
  }
}