import 'package:flutter/material.dart';
import 'package:flutter_web_teste2/utils/animated_progress_indicator.dart';

class SoftSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            colorC: Colors.green,
            percentage: 0.9,
            label: "Comunicação",
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            colorC: Colors.orangeAccent,
            percentage: 0.85,
            label: "Trabalho em Equipe",
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            colorC: Colors.amberAccent,
            percentage: 0.88,
            label: "Disciplina",
          ),
        ),
      ],
    );
  }
}
