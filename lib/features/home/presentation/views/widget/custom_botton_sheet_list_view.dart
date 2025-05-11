import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/widget/custom_botton_sheet.dart';
import 'package:weather/features/home/domin/entities/weather_entitie.dart';
import 'package:weather/features/home/presentation/manger/cubit/weather_hour_cubit/weather_hour_cubit.dart';

// ignore: must_be_immutable
class CustomBottonSheetListView extends StatelessWidget {
  CustomBottonSheetListView({super.key, required this.weather});
  List<WeatherEntitie> weather;

  @override
  Widget build(BuildContext context) {
    weather = BlocProvider.of<WeatherHourCubit>(context).weatherModel!;
    return SizedBox(
      height: 180,
      child: ListView.builder(
        itemCount: weather.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (weather[index].hourTime!.hour < 7) {
            return CustomBottonSheet(
              image: weather[index].getWeatherNightHourlyImage(),
              temp: '${weather[index].hourTemp!.toInt().toString()}°C',
              time: '${weather[index].hourTime!.hour.toInt().toString()}:00',
            );
          } else if (weather[index].hourTime!.hour < 17) {
            return CustomBottonSheet(
              image: weather[index].getWeatherDayHourlyImage(),
              temp: '${weather[index].hourTemp!.toInt().toString()}°C',
              time: '${weather[index].hourTime!.hour.toInt().toString()}:00',
            );
          } else {
            return CustomBottonSheet(
              image: weather[index].getWeatherNightHourlyImage(),
              temp: '${weather[index].hourTemp!.toInt().toString()}°C',
              time: '${weather[index].hourTime!.hour.toInt().toString()}:00',
            );
          }
        },
      ),
    );
  }
}
