import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class BigHeader extends StatelessWidget {
  final pagina;

  BigHeader({Key? key,
  required this.pagina,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SafeArea(
              child: Image.network(
                'https://images.unsplash.com/photo-1606560114363-e60d00c93734?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218MHx8bWFjfHx8fHx8MTYzMzAyNjM2OA&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1920',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2 ,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 100, horizontal: 70),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultTextStyle(
                      style: const TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Agne',
                          color: Colors.white),
                      child: Center(
                        child: AnimatedTextKit(
                          repeatForever: true,
                          pause: Duration(seconds: 3),
                          animatedTexts: [
                            TypewriterAnimatedText(pagina),

                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ],
    );
  }
}
