
import 'package:fast_delivery/src/shared/metrics/shared_metrics.dart';
import 'package:flutter/material.dart';
import 'package:fast_delivery/src/shared/colors/shared_color.dart';


class ButtonLocalizarEndereco extends StatelessWidget {

  const ButtonLocalizarEndereco({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(AppSharedMetrics.p0, AppSharedMetrics.p4, AppSharedMetrics.p0, AppSharedMetrics.p4),
      child: TextButton(
        onPressed: () {
          _dialogBuscarCep(context);
        },
        autofocus: false,
        style: TextButton.styleFrom(
          backgroundColor: AppSharedColors.defaultRed,
        ),
        child: const Text(
          'Localizar endereço',
          style: TextStyle(
            color: AppSharedColors.defaultWhite,
          ),
        ),
      ),
    );
  }
}

Future<void> _dialogBuscarCep(BuildContext context) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      backgroundColor: AppSharedColors.defaultWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSharedMetrics.p3)),
      content: Container(
        margin: const EdgeInsets.fromLTRB(AppSharedMetrics.p0, AppSharedMetrics.p3, AppSharedMetrics.p0, AppSharedMetrics.p3),
        child: const TextField(
            cursorColor: AppSharedColors.defaultRed,
            decoration:  InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: AppSharedColors.defaultRed, width: AppSharedMetrics.p1)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: AppSharedColors.defaultRed, width: AppSharedMetrics.p2)),
              hintText: 'Digite o CEP',
            ),
          ),
      ),
      actions: <Widget>[
        Center(
          child: TextButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppSharedColors.defaultRed)),
            onPressed: () {

            },
            child: const Text(
              'Buscar',
              style: TextStyle(color: AppSharedColors.defaultWhite),
            ),
          ),
        ),
      ],
    ),
  );
}
 
