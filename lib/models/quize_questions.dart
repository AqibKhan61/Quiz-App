class QuizeQuestion{
  const QuizeQuestion(this.Text, this.answers);
  
  // ignore: non_constant_identifier_names
  final String Text;
  final List<String> answers;

  List<String> getShuffled(){
    final shuffled = List.of(answers);
    shuffled.shuffle();
    return shuffled;

  }
}