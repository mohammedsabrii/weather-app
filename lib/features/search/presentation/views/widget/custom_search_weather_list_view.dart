import 'package:flutter/material.dart';
import 'package:weather/features/search/presentation/views/widget/weather_item.dart';

class CustomSearchWeatherListView extends StatelessWidget {
  const CustomSearchWeatherListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        WeatherItem(city: 'Makkah'),
        WeatherItem(city: 'Cairo'),
        WeatherItem(city: 'Alexandria'),
        WeatherItem(city: 'London'),
        WeatherItem(city: 'New York'),
        WeatherItem(city: 'Tokyo'),
        WeatherItem(city: 'Paris'),
      ],
    );
  }
}
