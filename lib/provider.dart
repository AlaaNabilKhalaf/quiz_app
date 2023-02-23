import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier{
  List<List<Map<String, dynamic>>> answers = [
    [
      {
        'text': 'answer1 1',
        'score': 10,
      },
      {
        'text': 'answer1 2',
        'score': 0,
      },
      {
        'text': 'answer1 3',
        'score': 0,
      },
      {
        'text': 'answer1 4',
        'score': 0,
      }
    ],
    [
      {
        'text': 'answer2 1',
        'score': 0,
      },
      {
        'text': 'answer2 2',
        'score': 10,
      },
      {
        'text': 'answer2 3',
        'score': 0,
      }
    ],
    [
      {
        'text': 'answer3 1',
        'score': 10,
      },
      {
        'text': 'answer3 2',
        'score': 0,
      }
    ],
  ];

  List<String> question = ['q1', 'q2', 'q3'];
  int index = -1 ;
  int score = 0 ;

  restart(){
    index = 0;
    score = 0;
    notifyListeners();
  }
  AnswerTest(){
      {
        index++;
        notifyListeners();
      }
  }
  changeScore({
    required int score,
  }) {
    this.score += score;
    notifyListeners();
  }
  restartApp() {
    index = 0;
    score = 0;
    notifyListeners();
  }
}