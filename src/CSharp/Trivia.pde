class Trivia {
    String question;
    String explanation;
    int correctAnswer;
    String[] options = new String [4];
  
    Trivia(String question, String explanation, int correctAnswer, String[] options){
      this.question = question;
      this.explanation = explanation;
      this.correctAnswer = correctAnswer;
      this.options = options;
    }
  
}
