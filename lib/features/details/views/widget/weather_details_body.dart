import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather/features/details/domin/entities/weather_entitie.dart';
import 'package:weather/features/details/views/manger/cubit/weather_details_cubit/weather_daily_cubit.dart';
import 'package:weather/features/details/views/widget/custom_weather_info_widget.dart';
import 'package:weather/features/home/domin/entities/weather_entitie.dart';
import 'package:weather/features/home/presentation/manger/cubit/weather_cubit/wather_cubit.dart';

// ignore: must_be_immutable
class WeatherDetailsBody extends StatelessWidget {
  WeatherDetailsBody({super.key, required this.weather});
  WeatherEntitie? weather;
  List<WeatherDailyEntitie>? weatherDailyEntitie;

  @override
  Widget build(BuildContext context) {
    weather = BlocProvider.of<WeatherCubit>(context).weatherModel;
    weatherDailyEntitie =
        BlocProvider.of<WeatherDailyCubit>(context).weatherModel;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWeatherInfoWidget(
              icon: Icons.device_thermostat_outlined,
              title: 'Temperature',
              body: '${weather!.temperature!.toInt()}°C',
              discrbtion:
                  'H:${weather!.hightDgree!.toInt()}°   L:${weather!.lowDgree!.toInt()}°',
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * .05,
            ),
            CustomWeatherInfoWidget(
                icon: Icons.wb_sunny,
                title: 'Sun Rise',
                body: '${weather!.sunRise} ',
                discrbtion:
                    'Time Now : ${DateTime.now().hour}:${DateTime.now().minute}'),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWeatherInfoWidget(
                icon: Icons.sunny,
                title: 'UV Index',
                body: weather!.uvIndex.toString(),
                discrbtion: 'Ultraviolet index'),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * .05,
            ),
            CustomWeatherInfoWidget(
                icon: FontAwesomeIcons.cloudRain,
                title: 'Total precip',
                body: '${weather!.totalPrecip}%',
                discrbtion: weather!.weatherState.toString()),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWeatherInfoWidget(
                icon: Icons.water_drop,
                title: 'Humidity',
                body: '${weather!.humidity}%',
                discrbtion: ''),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * .05,
            ),
            CustomWeatherInfoWidget(
                icon: FontAwesomeIcons.wind,
                title: 'Wind speed',
                body: '${weather!.wind!.toInt()} Kh',
                discrbtion: weatherDailyEntitie?.first.windDirection ?? ''),
          ],
        ),
      ],
    );
  }
}
