import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/styles/app_styles.dart';
import 'package:weather/core/widget/high_and_low_dgree.dart';
import 'package:weather/features/home/domin/entities/weather_entitie.dart';
import 'package:weather/features/home/presentation/manger/cubit/weather_cubit/wather_cubit.dart';

// ignore: must_be_immutable
class CustomTempDiteiles extends StatelessWidget {
  CustomTempDiteiles({super.key, required this.image});
  WeatherEntitie? weather;
  final String image;
  @override
  Widget build(BuildContext context) {
    weather = BlocProvider.of<WeatherCubit>(context).weatherModel;
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
          child: Image.asset(
            image,
            height: 230,
            width: 230,
          ),
        ),
        Text(
          '${weather!.temperature!.toInt().toString()}°',
          style: AppStyles.styleMedium64(context).copyWith(color: Colors.white),
        ),
        Text(
          // weatherEntitie!.weatherState!,
          weather!.weatherState!,
          style:
              AppStyles.styleRegular24(context).copyWith(color: Colors.white),
        ),
        HighAndLowDgree(weather: weather),
      ],
    );
  }
}
