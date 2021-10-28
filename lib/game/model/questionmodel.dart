class QuestionModel {
  String question;
  String answer;
  String imageURL;

  QuestionModel({this.question, this.answer, this.imageURL});

  void setQuestion(String getQuestion) {
    question = getQuestion;
  }

  void setAnswer(String getAnswer) {
    answer = getAnswer;
  }

  void setimageUrl(String getimageURL) {
    imageURL = getimageURL;
  }

  String getQuestion() {
    return question;
  }

  String getAnswer() {
    return answer;
  }

  String getimageURL() {
    return imageURL;
  }
}
