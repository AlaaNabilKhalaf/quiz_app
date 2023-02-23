import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp1/provider.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          Provider.of<MyProvider>(context, listen: false).AnswerTest();
        },
            child: Container(
                margin:  const EdgeInsets.symmetric(vertical: 20.0,
                    horizontal: 20.0),
                padding: const EdgeInsets.symmetric(vertical: 20.0,
                    horizontal: 20.0) ,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(65),
                    border: Border.all(
                        color: Colors.black,
                        width: 3
                    )
                ),
                child: const Text('Start',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.w500
                  ),),
              ),
        );
  }
}