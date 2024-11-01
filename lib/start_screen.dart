import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  //first is positional argument,which is a void return function, second is named argument
  const StartScreen(this.startQuiz,{super.key});

final void Function() startQuiz;


  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
  
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 249, 248, 248),
            ),
          


          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 80,
          ),
           Text(
            "Learn Flutter in fun way!",
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 237, 223, 252), 
                fontSize: 24,
                ),
          ),
          const SizedBox( height: 30,),
          OutlinedButton.icon(onPressed: startQuiz, 
          style:OutlinedButton.styleFrom(
            foregroundColor: Colors.white
          ) ,
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Start Quiz"))
        ],
      ),
    );
  }
}
