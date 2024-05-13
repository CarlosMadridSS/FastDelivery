import 'package:fast_delivery/src/shared/metrics/shared_metrics.dart';
import 'package:flutter/material.dart';
import 'package:fast_delivery/src/shared/colors/shared_color.dart';

class SpanUltimosEnderecosLocalizados extends StatelessWidget {
  const SpanUltimosEnderecosLocalizados({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(AppSharedMetrics.p0, AppSharedMetrics.p8, AppSharedMetrics.p0, AppSharedMetrics.p8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            color: AppSharedColors.defaultRed,
            size: AppSharedMetrics.i2,
            Icons.place,
          ),
          Text(
              style: TextStyle(
                color: AppSharedColors.defaultRed,
                fontSize: AppSharedMetrics.f3,
              ),
              'Últimos endereços localizados')
        ],
      ),
    );
  }
}
