import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp1/provider.dart';
import 'package:quizapp1/questions.dart';
import 'package:quizapp1/answers.dart';
import 'screen1.dart';

class screen2 extends StatefulWidget {

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Quiz App',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.normal
          ),),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset('asset/photo5886581485140556347.jpg',
              height: 170,
              width: 200,
              fit: BoxFit.fill,
              // fit: BoxFit.cover,
            ),
          ),
          if(Provider.of<MyProvider>(context).index == -1)
            const Screen1(),
          if (Provider.of<MyProvider>(context).index <
              Provider.of<MyProvider>(context).answers.length && Provider.of<MyProvider>(context).index > -1)
            qu(Q: Provider.of<MyProvider>(context).question[Provider.of<MyProvider>(context).index]),
          if (Provider.of<MyProvider>(context).index <
              Provider.of<MyProvider>(context).answers.length && Provider.of<MyProvider>(context).index > -1)
    for(int i =0 ;
    i < Provider.of<MyProvider>(context).answers[Provider.of<MyProvider>(context).index].length;
    i++)
    answers(answer: Provider.of<MyProvider>(context).answers[Provider.of<MyProvider>(context).index][i]['text'] as String  ,
    function: () {
    Provider.of<MyProvider>(context,listen: false).changeScore(
    score: Provider.of<MyProvider>(context,listen: false).answers[Provider.of<MyProvider>(context,listen: false).index][i]['score'],
    );
    Provider.of<MyProvider>(context,listen: false).AnswerTest();
    },
    ),

          if(Provider.of<MyProvider>(context, listen: false).index == Provider.of<MyProvider>(context).answers.length)
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Text('Your score is : ${Provider.of<MyProvider>(context).score}',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20
                ),),
              ],
            ),
          if(Provider.of<MyProvider>(context, listen: false).index == Provider.of<MyProvider>(context).answers.length)
            answers(answer: 'Restart',
                function: (){
                  Provider.of<MyProvider>(context, listen: false).restartApp();
                })

        ],
      ) ,
    );
  }
}

