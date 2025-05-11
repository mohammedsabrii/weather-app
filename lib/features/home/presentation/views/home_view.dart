import 'package:flutter/material.dart';
import 'package:weather/features/home/presentation/views/widget/home_view_body.dart';

class WeatherAppHomeView extends StatelessWidget {
  const WeatherAppHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeViewBody());
  }
}
