import 'package:fast_delivery/src/home/components/list_ultimos_enderecos.dart';
import 'package:flutter/material.dart';

import 'package:fast_delivery/src/shared/colors/shared_color.dart';

import 'package:fast_delivery/src/home/components/span_ultimos_enderecos.dart';
import 'package:fast_delivery/src/home/components/button_localizar_endereco.dart';
import 'package:fast_delivery/src/home/components/card_apresentacao.dart';
import 'package:fast_delivery/src/home/components/title_titulo_geral.dart';
import 'package:fast_delivery/src/home/components/button_historico_enderecos.dart';

class HomePage extends StatelessWidget {
  final String homePageTitle;
  const HomePage({super.key, required this.homePageTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 250, 250, 250),
        appBar: AppBar(
          backgroundColor: AppSharedColors.defaultRed,
          title: TituloGeral(tituloGeral: homePageTitle, key: UniqueKey()),
          centerTitle: true,
        ),
        body: Column(
          children: [
            CardApresentacao(key: UniqueKey()),
            ButtonLocalizarEndereco(key: UniqueKey()),
            SpanUltimosEnderecosLocalizados(key: UniqueKey()),
            Flexible(
              child: ListUltimosEnderecosLocalizados(key: UniqueKey()),
            ),
            ButtonHistorcoEnderecos(key: UniqueKey()),
            
          ],
        ));
  }
}



