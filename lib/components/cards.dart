import 'package:flutter/material.dart';

class CardsC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Card(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.amberAccent,
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.amberAccent,
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.amberAccent,
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.amberAccent,
          ),
        ),
      ],
    );
  }
}
