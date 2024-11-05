class QuizQuestions {
  QuizQuestions(this.text,this.answers);
  final String text;
  final List<String> answers;

  // List<String> getShuffledAnswer(){
    List<String> get ShuffledAnswers{ //get is used to make getter function, it will aloow function name to be used as variable

final shuffledList = List.of(answers); //create copy of original list
  shuffledList.shuffle();
    return shuffledList;
  }
}