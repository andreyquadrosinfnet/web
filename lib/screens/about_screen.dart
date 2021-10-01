import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_teste2/components/big_header.dart';
import 'package:flutter_web_teste2/components/personal_infos.dart';
import 'package:flutter_web_teste2/components/programming_skills.dart';
import 'package:flutter_web_teste2/components/sliverappbar_custom.dart';
import 'package:flutter_web_teste2/components/soft_skills.dart';
import 'package:flutter_web_teste2/utils/animated_progress_indicator.dart';
import 'package:flutter_web_teste2/utils/styles.dart';
import 'package:styled_text/styled_text.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      // ignore: prefer_const_constructors
      SliverAppBarC(),

      SliverToBoxAdapter(
        child: BigHeader(pagina: 'Sobre Mim'),
      ),
      SliverToBoxAdapter(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/foto.jpg"),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            StyledText(
              text: "<bold><h1> Andrey Alencar Quadros </h1></bold>",
              tags: {
                'bold': StyledTextTag(
                    style: TextStyle(fontWeight: FontWeight.bold)),
                'h1': StyledTextTag(style: TextStyle(fontSize: 30))
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 40, 60, 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                child: const AutoSizeText(
                  "     28 anos, Cientista da Computação formado pela Universidade Federal de Mato Grosso. Teólogo pelo Centro de Ensino Superior de Maringá e Licenciado em"
                  "Computação através da Formação Pedagógica para Graduados Não Licenciados ofertado pelo Instituto Federal de Rondônia. Pós-graduado em MBA em Gestão e"
                  "Governança de TI e Marketing Digital pelas Universidades de Passo Fundo e Instituto Brasileiro de Formação. Mestrando em Propriedade Intelectual e Transferência de"
                  "Tecnologia para Inovação. Como competências: Programador Mobile Flutter e entusiasta das tecnologias Arduino, RFID e Genexus. Atualmente é professor do Instituto"
                  "Federal de Educação Ciência e Tecnologia de Rondônia. Tem experiência na área de Ciência da Computação, com ênfase em programação Web e Mobile, atuando"
                  "principalmente nos seguintes temas: Governança de TI, Sistemas de Informação, Gerência de Projetos, Engenharia de Software e, desenvolvimento de aplicações "
                  "comerciais.",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Text('Habilidades em Programação',
            style: TextStyle(
              fontSize: 25
            ),),
            Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30)),
            ProgrammingSkills(),
            Padding(padding: EdgeInsets.only(top: 40)),
            Text('Habilidades Comportamentais',
              style: TextStyle(
                  fontSize: 25
              ),),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 30)),
            SoftSkills(),
            Padding(padding: EdgeInsets.only(top: 60)),
          ],
        ),
      ),
    ]));
  }
}
