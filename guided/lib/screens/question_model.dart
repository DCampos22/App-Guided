
class Question{
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}
class Answer{
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions(){
  List<Question> list = [];

  list.add(
    Question("Your friends would describe you as...",
    [
      Answer("Skeptical", false),
      Answer("Problem-Solver", true),
      Answer("Leader", false),
      Answer("Storyteller", false),
    ],
    ));
    list.add(
    Question("What's your favorite type of project?",
    [
      Answer("Making a diorama", false),
      Answer("Preparing presentation", false),
      Answer("Automating workflows", true),
      Answer("Planning new initiative", false),
    ],
    ));
    list.add(
    Question("What does success mean for you?",
    [
      Answer("Earning high income", false),
      Answer("Work life balance", true),
      Answer("Creative control", false),
      Answer("Make high-level decisions", false),
    ],
    ));
    list.add(
    Question("How do you feel about working in groups?",
    [
      Answer("I love working in groups!", false),
      Answer("I like leading the group", false),
      Answer("I adapt to any situation", true),
      Answer("I prefer to be alone", false),
    ],
    ));
    return list;
}