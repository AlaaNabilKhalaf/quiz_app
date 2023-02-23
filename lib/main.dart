import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp1/provider.dart';
import 'package:quizapp1/screen2.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (BuildContext context){
    return MyProvider();
  },
      child: QuizAp()),
  );
}
//pub.
class QuizAp extends StatefulWidget {

  @override
  State<QuizAp> createState() => _QuizApState();
}

class _QuizApState extends State<QuizAp> {

  @override
  Widget build(BuildContext context) {


   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: screen2());

    }


}


