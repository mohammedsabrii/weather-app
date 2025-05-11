import 'package:flutter/material.dart';

class TemperatureInformation extends StatelessWidget {
  final num minTemp;
  final num maxTemp;
  final String location;

  const TemperatureInformation({
    super.key,
    required this.minTemp,
    required this.maxTemp,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'H:$maxTemp° L:$minTemp°',
          style: const TextStyle(color: Color(0x99EBEBF5)),
        ),
        Text(
          location,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
