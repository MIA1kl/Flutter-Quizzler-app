import 'questions.dart';

int _pointer = 0;

class QuizBrain{
  List<Questions> _questionBank = [
    Questions('Prince Harry is taller than Prince William', false),
    Questions('The star sign Aquarius is represented by a tiger', true),
    Questions('M&M stands for Mars and Moordale', false),
    Questions('The unicorn is the national animal of Scotland', true),
    Questions('In Harry Potter, Draco Malfoy has no siblings', false),
    Questions('You can lead a cow down stairs but not up stairs', false),
    Questions('Approximately one quarter of human bones are in the feet', true),
    Questions('A slug\'s blood is green', true),
    Questions('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Questions('It is illegal to pee in the Ocean in Portugal.', true),
    Questions(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Questions(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Questions(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Questions(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Questions('Google was originally called \"Backrub\".', true),
    Questions(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Questions(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  String getQuestionText(){
    return _questionBank[_pointer].questionText;
  }

  bool getQuestionAnswer(){
    return _questionBank[_pointer].questionAnswer;
  }

  void getNextQuestion(){
    if(_pointer<_questionBank.length-1){
      _pointer++;
    }
  }

  bool isFinished() {
    if (_pointer >= _questionBank.length - 1) {
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _pointer = 0;
  }

}