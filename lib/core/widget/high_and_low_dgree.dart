import 'package:flutter/material.dart';
import 'package:weather/core/styles/app_styles.dart';
import 'package:weather/features/home/domin/entities/weather_entitie.dart';

class HighAndLowDgree extends StatelessWidget {
  const HighAndLowDgree({
    super.key,
    required this.weather,
  });

  final WeatherEntitie? weather;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'H:${weather!.hightDgree!.toInt()}°',
          style:
              AppStyles.styleRegular24(context).copyWith(color: Colors.white),
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          'L:${weather!.lowDgree!.toInt()}°',
          style:
              AppStyles.styleRegular24(context).copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
