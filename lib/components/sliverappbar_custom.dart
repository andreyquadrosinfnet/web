import 'package:flutter/material.dart';
import 'package:flutter_web_teste2/components/menu.dart';
import 'package:flutter_web_teste2/utils/styles.dart';

class SliverAppBarC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: PaletaCores.menuColor,
      floating: true,
      elevation: 25,
      shadowColor: PaletaCores.blueLogo,
      centerTitle: false,
      // ignore: prefer_const_constructors
      title: Text(
        "AAQ",
        // ignore: prefer_const_constructors
        style: TextStyle(
            color: PaletaCores.blueLogo,
            fontWeight: FontWeight.w400,
            letterSpacing: -1.2,
            fontSize: 28), // ignore: prefer_const_constructors
      ),
      actions: [
        MenuC(),
      ],
    );
  }
}
