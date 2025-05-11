import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/home/domin/entities/weather_entitie.dart';
import 'package:weather/features/home/presentation/manger/cubit/weather_cubit/wather_cubit.dart';
import 'package:weather/features/home/presentation/manger/cubit/weather_cubit/wather_state.dart';
import 'package:weather/features/home/presentation/views/widget/custom_temp_diteils.dart';

// ignore: must_be_immutable
class CustomTebDiteilesBlocBulider extends StatelessWidget {
  CustomTebDiteilesBlocBulider({
    super.key,
  });

  WeatherEntitie? weather;

  @override
  Widget build(BuildContext context) {
    weather = BlocProvider.of<WeatherCubit>(context).weatherModel;
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (weather!.timeNow!.hour < 7) {
          return CustomTempDiteiles(image: weather!.getWeatherNightImage());
        } else if (weather!.timeNow!.hour < 17) {
          return CustomTempDiteiles(image: weather!.getWeatherDayImage());
        } else {
          return CustomTempDiteiles(image: weather!.getWeatherNightImage());
        }
      },
    );
  }
}
