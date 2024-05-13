import 'package:fast_delivery/src/shared/metrics/shared_metrics.dart';
import 'package:flutter/material.dart';
import 'package:fast_delivery/src/shared/colors/shared_color.dart';

class CardApresentacao extends StatelessWidget {
  const CardApresentacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(AppSharedMetrics.p5, AppSharedMetrics.p4, AppSharedMetrics.p5, AppSharedMetrics.p4),
      decoration: BoxDecoration(
        color: AppSharedColors.defaultGray,
        borderRadius: BorderRadius.circular(AppSharedMetrics.p3),
      ),
      child: Column(
        children: [
          const Icon(
            color: AppSharedColors.defaultRed,
            size: AppSharedMetrics.p7,
            Icons.delivery_dining,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: AppSharedMetrics.p3),
            child: const Text(
              style:
                  TextStyle(color: AppSharedColors.defaultRed, fontSize: AppSharedMetrics.p4),
              textAlign: TextAlign.center,
              'Faça uma busca para localizar o especificado destino',
            ),
          )
        ],
      ),
    );
  }
}
