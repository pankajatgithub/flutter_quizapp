import 'package:flutter/material.dart';
import 'package:flutter_quizapp/data/questions.dart';
import 'package:flutter_quizapp/questions_summary/questions_summary.dart';
class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key, 
    required this.chosenAnswers
    });

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {

    final List<Map<String,Object>>summary = [];


for(var i =0; i < chosenAnswers.length; i++){
  summary.add({
    'question_index':i,
    'question':questions[i].text,
    'correct_answer':questions[i].answers[0],//we assume first answer always right
    'user_answer':chosenAnswers[i]
  });
}
    return summary;
  }

  @override
  Widget build(BuildContext context) {
   final summaryData = getSummaryData();
   final numTotalQuestions = questions.length;
   //filter list and return new list
   final numCorrectQuestions = summaryData.where((data){
   return data['user_answer'] == data['correct_answer'];
   }).length;//amount of item kept in flitered list

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("You answered ${numCorrectQuestions} out of ${numTotalQuestions} questions correctly"),
           
           const SizedBox(
              height: 30,
            ),
             QuestionsSummary(summaryData),
          const  SizedBox(
              height: 30,
            ),
            const Text("List of answers and questions..."),
            TextButton(onPressed: () {}, 
            child: const Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
