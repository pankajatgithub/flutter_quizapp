import 'package:flutter/material.dart';
import 'package:flutter_quizapp/data/questions.dart';
import 'package:flutter_quizapp/models/answer_button.dart';
class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
  
return _QuestionsScreenState();
  }

}

class _QuestionsScreenState extends State<QuestionsScreen>{
  @override
  Widget build(BuildContext context) {
final currentQuestions = questions[0];

     return 
     SizedBox(
      width: double.infinity,
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children:  [
          Text(
          currentQuestions.text,
         style:const TextStyle(color: Colors.white),),
        
        
         const SizedBox(height: 30),
//const numbers = [1,2,3];const moreNum = [numbers,4],it is equal to [[1,2,3],4],
//numbers added as single value to list, const moreNumers = [...numbers,4],it is equal to [1,2,3,4],
//numbers added as multiple values
         ...currentQuestions.answers.map((answer){
          return AnswerButton(answerText:answer,onTap:(){});
        })
        ],
           ),
     );

}
}