import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class PersonalInfos extends StatelessWidget {
  const PersonalInfos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SafeArea(
              child: Image.network(
                'https://images.unsplash.com/photo-1516315720917-231ef9acce48?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2067&q=80',
                //'https://images.unsplash.com/photo-1527443195645-1133f7f28990?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2070&q=80',
                //'https://images.unsplash.com/photo-1606560114363-e60d00c93734?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218MHx8bWFjfHx8fHx8MTYzMzAyNjM2OA&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1920',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 250),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                            TypewriterAnimatedText('Andrey Alencar Quadros \nDesenvolvedor Flutter'),
                            TypewriterAnimatedText('Soluções Personalizadas \npara a sua Empresa'),
                            TypewriterAnimatedText('Desenvolvendo Apps \nAndroid, iOS e Web \nem Flutter'),
                            TypewriterAnimatedText(
                                'Um único código, \nmúltiplas plataformas'),
                            TypewriterAnimatedText(
                                'Inclusive esse, \ntotalmente feito\n em Flutter'),
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
