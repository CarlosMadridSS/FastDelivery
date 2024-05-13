import 'package:fast_delivery/src/shared/colors/shared_color.dart';
import 'package:fast_delivery/src/shared/metrics/shared_metrics.dart';
import 'package:flutter/material.dart';

class Endereco {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;

  Endereco(this.bairro, this.cep, this.complemento, this.logradouro,
      this.localidade, this.uf);
}

class ListUltimosEnderecosLocalizados extends StatelessWidget {
  ListUltimosEnderecosLocalizados({super.key});

  final List<Endereco> items = [
    /*Endereco('Bairro Tal', '000.000-00', 'Complemento Tal', 'Logradouro Tal',
        'Localidade tal', 'SC'),
    Endereco('Bairro Tal', '000.000-00', 'Complemento Tal', 'Logradouro Tal',
        'Localidade tal', 'SC'),
    Endereco('Bairro Tal', '000.000-00', 'Complemento Tal', 'Logradouro Tal',
        'Localidade tal', 'SC'),
    Endereco('Bairro Tal', '000.000-00', 'Complemento Tal', 'Logradouro Tal',
        'Localidade tal', 'SC')*/
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(AppSharedMetrics.p5, AppSharedMetrics.p0, AppSharedMetrics.p5, AppSharedMetrics.p0),
        height: AppSharedMetrics.h1,
        decoration: BoxDecoration(
            color: AppSharedColors.defaultRed,
            borderRadius: BorderRadius.circular(AppSharedMetrics.p3)),
        child: items.isEmpty
            ? const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(size: AppSharedMetrics.i1 ,color: AppSharedColors.defaultWhite,Icons.location_off),
                    Text(style: TextStyle(color: AppSharedColors.defaultWhite, fontSize: AppSharedMetrics.f2), 'Nenhum item na lista')
                  ],
                ),
              )
            : ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    subtitle: Text(
                        style: const TextStyle(color: AppSharedColors.defaultWhite, fontSize: AppSharedMetrics.f1),
                        '${items[index].cep} - ${items[index].bairro} - ${items[index].localidade}, ${items[index].uf}'),
                    leading: const Icon(
                      color: AppSharedColors.defaultWhite,
                      Icons.history,
                    ),
                    title: Text(
                      style: const TextStyle(
                          fontSize: AppSharedMetrics.f2, color: AppSharedColors.defaultWhite),
                      '${items[index].localidade}, ${items[index].complemento}',
                    ),
                  );
                },
              )
              );
  }
}

