import 'package:flutter/material.dart';
import 'package:flutter_web_teste2/utils/animated_progress_indicator.dart';

class ProgrammingSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            colorC: Colors.lightBlue,
            percentage: 0.7,
            label: "Flutter",
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            colorC: Colors.redAccent,
            percentage: 0.72,
            label: "Python",
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            colorC: Colors.deepPurple,
            percentage: 0.82,
            label: "PHP/WP",
          ),
        ),
      ],
    );
  }
}
