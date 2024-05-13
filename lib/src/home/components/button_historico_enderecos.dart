import 'package:fast_delivery/src/shared/metrics/shared_metrics.dart';
import 'package:flutter/material.dart';
import 'package:fast_delivery/src/shared/colors/shared_color.dart';

class ButtonHistorcoEnderecos extends StatelessWidget {
  const ButtonHistorcoEnderecos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: AppSharedMetrics.p6),
        child: TextButton(
            onPressed: () {},
            autofocus: false,
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppSharedColors.defaultRed)),
            child: const Text(
                style: TextStyle(
                  color: AppSharedColors.defaultWhite,
                ),
                'Histórico de endereços')));
  }
}
