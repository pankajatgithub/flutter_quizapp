import 'package:flutter/material.dart';
import 'package:flutter_quizapp/data/questions.dart';
import 'package:flutter_quizapp/models/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';
class QuestionsScreen extends StatefulWidget{

  const QuestionsScreen({super.key,required this.onSelectAnswer});

final void Function (String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
  return _QuestionsScreenState();
  }

}

class _QuestionsScreenState extends State<QuestionsScreen>{
  
  var currentQuestionIndex = 0;

void answerQuestion(String selectedAnswer ){
  // currentQuestionIndex = currentQuestionIndex +1;
  // currentQuestionIndex += 1 ;
  widget.onSelectAnswer(selectedAnswer); //widget can be used inside state function can access class properties
  setState(() {
      currentQuestionIndex++; 
  });
}
  @override
  Widget build(BuildContext context) {
final currentQuestion = questions[currentQuestionIndex];

     return SizedBox(
      width: double.infinity,
       child: Container(
        margin: EdgeInsets.all(20),
         child: Column(
               
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
           children:  [
            Text(
            currentQuestion.text,
            style:GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
           
            textAlign: TextAlign.center,
            ),
    
           const SizedBox(height: 30),
         //const numbers = [1,2,3];const moreNum = [numbers,4],it is equal to [[1,2,3],4],
         //numbers added as single value to list, const moreNumers = [...numbers,4],it is equal to [1,2,3,4],
         //numbers added as multiple values
         //map does not change the original list, shuffle changes original list
           ...currentQuestion.ShuffledAnswers.map((answer){
            return AnswerButton(
              answerText:answer,
            onTap:(){answerQuestion(answer);
             },);
           })
          ],
             ),
       ),
     );

}
}