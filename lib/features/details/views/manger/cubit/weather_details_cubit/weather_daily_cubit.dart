import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/core/service/api_service_day.dart';
import 'package:weather/features/details/domin/entities/weather_entitie.dart';
import 'package:weather/features/details/views/manger/cubit/weather_details_cubit/weather_daily_states.dart';

class WeatherDailyCubit extends Cubit<WeatherDailyState> {
  WeatherDailyCubit(this.weatherServiceWeak) : super(WeatherInitialState());
  String? cityName;
  List<WeatherDailyEntitie>? weatherModel;
  final WeatherServiceWeak weatherServiceWeak;
  Future<void> getWeather() async {
    emit(WeatherDailyLoadingState());
    try {
      if (cityName == null) {
        Position position = await getCurrentLocation();
        weatherModel = await WeatherServiceWeak(Dio()).getForcast(
            cityName: 'lat=${position.latitude}&lon=${position.longitude}');
      } else {
        weatherModel = await WeatherServiceWeak(Dio())
            .getForcast(cityName: 'city=$cityName');
      }

      emit(
        WeatherDailySuccessState(
          weatherModel!,
        ),
      );
    } catch (e) {
      emit(WeatherDailyFailureState(e.toString()));
    }
  }

  Future<Position> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        emit(WeatherInitialState());
      }
    }

    if (permission == LocationPermission.deniedForever) {
      emit(WeatherInitialState());
    }

    return await Geolocator.getCurrentPosition();
  }
}
