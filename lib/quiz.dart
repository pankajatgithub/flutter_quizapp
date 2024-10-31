import 'package:flutter/material.dart';
import 'package:flutter_quizapp/question_screen.dart';
import 'package:flutter_quizapp/start_screen.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});

  
  @override
  State<Quiz> createState() {
   return _QuizState();
  }

}
//leading underscore used to define private class
//classname + state is nsaminig convention
class _QuizState extends State<Quiz>{
     var activeScreen =  'start-screen';//widget are also normal objects hence can be assigned to variables

// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//      activeScreen =  StartScreen(switchScreen);//widget are also normal objects hence can be assigned to variables

//   }

void switchScreen (){
  //this setState method will run build method again
setState(() {
    activeScreen = 'questions-screen';

  // activeScreen = const QuestionsScreen();
});
}
  @override
  Widget build(context) {

Widget ScreenWidget= StartScreen(switchScreen);

if(activeScreen =='questions-screen')
      ScreenWidget = const QuestionsScreen() ;
  

return MaterialApp(
  title: "Quiz APP",
  home: Scaffold(
    body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107 , 15, 168)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
          ),
      ),
      child:ScreenWidget,
      )
    )
  ); }

}