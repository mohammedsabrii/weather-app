import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/core/service/api_service_hour.dart';
import 'package:weather/features/home/domin/entities/weather_entitie.dart';

part 'weather_hour_state.dart';

class WeatherHourCubit extends Cubit<WeatherHourState> {
  WeatherHourCubit(this.apiService) : super(WeatherHourInitial());
  String? cityName;

  List<WeatherEntitie>? weatherModel;
  final ApiServiceHour apiService;
  Future<void> getWeather() async {
    emit(WeatherHourLodeing());

    try {
      if (cityName == null) {
        Position position = await getCurrentLocation();

        String latLng = '${position.latitude},${position.longitude}';
        weatherModel = await apiService.getHourWeather(cityName: latLng);
      } else {
        weatherModel = await apiService.getHourWeather(cityName: cityName!);
      }
      emit(WeatherHourSacsess(weatherModel!));
    } catch (e) {
      emit(WeatherHourFillier(errorMassage: e.toString()));
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
        emit(WeatherHourInitial());
      }
    }

    if (permission == LocationPermission.deniedForever) {
      emit(WeatherHourInitial());
    }

    return await Geolocator.getCurrentPosition();
  }
}
