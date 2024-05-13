
import 'package:fast_delivery/src/shared/metrics/shared_metrics.dart';
import 'package:flutter/material.dart';
import 'package:fast_delivery/src/shared/colors/shared_color.dart';

class TituloGeral extends StatelessWidget{

  final String tituloGeral;
  const TituloGeral ({super.key, required this.tituloGeral});
  

  

  @override
  Widget build (BuildContext context){
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.local_pizza,
                color: AppSharedColors.defaultWhite,
                size: AppSharedMetrics.i1,
              ),
              const SizedBox(width: AppSharedMetrics.p9),
              Text(
                tituloGeral, //erro aqui
                style: const TextStyle(
                  fontSize: AppSharedMetrics.f4,
                  color: AppSharedColors.defaultWhite,
                ),
              ),
            ],
          );
  }

}