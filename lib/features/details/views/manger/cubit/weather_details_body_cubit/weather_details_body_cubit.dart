import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/core/service/api_service.dart';
import 'package:weather/features/home/domin/entities/weather_entitie.dart';

part 'weather_details_body_state.dart';

class WeatherDetailsBodyCubit extends Cubit<WeatherDetailsBodyState> {
  WeatherDetailsBodyCubit(this.apiService) : super(WeatherDetailsBodyInitial());
  String? cityName;
  WeatherEntitie? weatherEntitie;
  final ApiService apiService;
  void getDetailsBody() async {
    emit(WeatherDetailsBodyLoadingState());
    try {
      if (cityName == null) {
        Position position = await getCurrentLocation();
        String latLng = '${position.latitude},${position.longitude}';
        weatherEntitie = await apiService.getWeather(cityName: latLng);
      } else {
        weatherEntitie = await apiService.getWeather(cityName: cityName!);
      }

      emit(WeatherDetailsBodySuccessState(weatherModel: weatherEntitie!));
    } catch (e) {
      emit(WeatherDetailsBodyFailureState(e.toString()));
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
        emit(WeatherDetailsBodyInitial());
      }
    }

    if (permission == LocationPermission.deniedForever) {
      emit(WeatherDetailsBodyInitial());
    }

    return await Geolocator.getCurrentPosition();
  }
}
