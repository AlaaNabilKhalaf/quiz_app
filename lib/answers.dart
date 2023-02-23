import 'package:flutter/material.dart';

class answers extends StatefulWidget {
   answers({Key? key, required this.answer , required this.function}) : super(key: key);

   Function function;
   String answer;
  @override
  State<answers> createState() => _answersState();
}

class _answersState extends State<answers> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      widget.function();
        print('k');

      },
      child: Padding( padding: const EdgeInsets.all(6.0),
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(8.0),
          child: Text('${widget.answer}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: Colors.black,
                width: 3
            ),
          ),
        ),
      ),
    );
  }
}

