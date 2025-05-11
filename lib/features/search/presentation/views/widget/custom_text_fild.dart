import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/styles/app_styles.dart';
import 'package:weather/features/details/views/manger/cubit/weather_details_body_cubit/weather_details_body_cubit.dart';
import 'package:weather/features/details/views/manger/cubit/weather_details_cubit/weather_daily_cubit.dart';
import 'package:weather/features/home/presentation/manger/cubit/weather_cubit/wather_cubit.dart';
import 'package:weather/features/home/presentation/manger/cubit/weather_hour_cubit/weather_hour_cubit.dart';

class CustomSearchTextFild extends StatefulWidget {
  const CustomSearchTextFild({super.key});

  @override
  State<CustomSearchTextFild> createState() => _CustomSearchTextFildState();
}

class _CustomSearchTextFildState extends State<CustomSearchTextFild> {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF20284D),
            Color(0xFF3A3780),
            Color(0xFF4E3E9B),
            Color(0xFF7A50AF),
            Color(0xFF9D52AC),
          ],
        ),
      ),
      child: TextField(
        onChanged: (value) {
          cityName = value;
        },
        onSubmitted: (value) {
          cityName = value;

          BlocProvider.of<WeatherHourCubit>(context).getWeather();
          BlocProvider.of<WeatherHourCubit>(context).cityName = cityName;
          BlocProvider.of<WeatherCubit>(context).getWeather();
          BlocProvider.of<WeatherCubit>(context).cityName = cityName;
          BlocProvider.of<WeatherDailyCubit>(context).getWeather();
          BlocProvider.of<WeatherDailyCubit>(context).cityName = cityName;
          BlocProvider.of<WeatherDetailsBodyCubit>(context).getDetailsBody();
          BlocProvider.of<WeatherDetailsBodyCubit>(context).cityName = cityName;
          Navigator.pop(context);
        },
        style: const TextStyle(
          color: Colors.white,
        ),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          enabledBorder: outLineInputBorder(),
          focusedBorder: outLineInputBorder(),
          label: const Row(
            children: [
              Icon(
                Icons.search,
                color: Color(0x99EBEBF5),
              ),
              Text(
                ' Search for a city or airport',
              )
            ],
          ),
          labelStyle: AppStyles.styleRegular17(context)
              .copyWith(color: const Color(0x99EBEBF5)),
        ),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xFF2E335A)),
    );
  }
}
