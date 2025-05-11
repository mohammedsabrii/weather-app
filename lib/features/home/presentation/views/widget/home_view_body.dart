import 'package:flutter/material.dart';
import 'package:weather/features/home/presentation/views/widget/Custom_Info_weather_body.dart';
import 'package:weather/features/home/presentation/views/widget/background_image.dart';
import 'package:weather/features/home/presentation/views/widget/custom_botton_navigation_bar.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            Color(0xFF8F4EA9),
          ],
        ),
      ),
      child: Stack(
        children: [
          const BackgroundImage(),
          CustomInfoWeatherbody(),
          const Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavigationBar()),
        ],
      ),
    );
  }
}
