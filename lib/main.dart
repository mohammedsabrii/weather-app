import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/service/api_service.dart';
import 'package:weather/core/service/api_service_day.dart';
import 'package:weather/core/service/api_service_hour.dart';
import 'package:weather/core/utils/app_router.dart';
import 'package:weather/features/details/views/manger/cubit/weather_details_body_cubit/weather_details_body_cubit.dart';
import 'package:weather/features/details/views/manger/cubit/weather_details_cubit/weather_daily_cubit.dart';
import 'package:weather/features/home/presentation/manger/cubit/weather_cubit/wather_cubit.dart';
import 'package:weather/features/home/presentation/manger/cubit/weather_hour_cubit/weather_hour_cubit.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WeatherCubit(ApiService(Dio())),
        ),
        BlocProvider(
            create: (context) => WeatherHourCubit(ApiServiceHour(Dio()))),
        BlocProvider(
            create: (context) => WeatherDailyCubit(WeatherServiceWeak(Dio()))),
        BlocProvider(
            create: (context) => WeatherDetailsBodyCubit(ApiService(Dio()))),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
      ),
    );
  }
}
