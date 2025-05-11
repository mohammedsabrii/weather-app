import 'package:flutter/material.dart';

import 'package:weather/features/details/views/widget/details_view_body.dart';

class WeatherDetailesView extends StatelessWidget {
  const WeatherDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF20284D),
              Color(0xFF3A3780),
              Color(0xFF4E3E9B),
              Color(0xFF7A50AF),
              Color(0xFF9D52AC),
            ],
          ),
        ),
        child: const DateilsViewBody(),
      ),
    );
  }
}
