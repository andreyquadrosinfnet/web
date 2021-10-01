import 'package:flutter/material.dart';
import 'package:flutter_web_teste2/utils/styles.dart';

import '../app_routes.dart';

class MenuC extends StatelessWidget {
  const MenuC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 0, 24, 0),
      child: Row(
        children:  [
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.PAGINA_INICIAL);
            },

              child: const Text(
            'Página Inicial',
            style: TextStyle(color: PaletaCores.blueLogo, fontSize: 20),
          )),
          const VerticalDivider(),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.SOBRE_MIM);
            },
            child: const Text(
              'Sobre Mim',
              style: TextStyle(color: PaletaCores.blueLogo, fontSize: 20),
            ),
          ),
          VerticalDivider(),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.TRABALHOS);
            },
            child: Text(
              'Trabalhos',
              style: TextStyle(color: PaletaCores.blueLogo, fontSize: 20),
            ),
          ),
          VerticalDivider(),
          Text(
            'Contato',
            style: TextStyle(color: PaletaCores.blueLogo, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
