import 'package:flutter/material.dart';

class qu extends StatelessWidget {
  qu({Key? key, required this.Q} ) : super(key: key);
String Q;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 65,
        child: Text('$Q',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30
          ),
        ),
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Colors.black38,
              width:3
          ),
          color: Colors.blueGrey,

        ),
      ),
    );;
  }
}

