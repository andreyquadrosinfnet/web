import 'package:flutter/material.dart';
import 'package:flutter_web_teste2/components/personal_infos.dart';
import 'package:flutter_web_teste2/components/sliverappbar_custom.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // ignore: prefer_const_constructors
          SliverAppBarC(),
          const SliverToBoxAdapter(
            child: PersonalInfos(),
          ),
        ],
      ),
    );
  }
}
