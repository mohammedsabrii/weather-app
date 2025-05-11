import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/core/service/api_service.dart';
import 'package:weather/features/home/domin/entities/weather_entitie.dart';
import 'package:weather/features/home/presentation/manger/cubit/weather_cubit/wather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.apiService) : super(WeatherInitialState());
  String? cityName;
  WeatherEntitie? weatherModel;
  final ApiService apiService;

  void getWeather() async {
    emit(WeatherLodeing());

    try {
      if (cityName == null) {
        Position position = await getCurrentLocation();
        String latLng = '${position.latitude},${position.longitude}';
        weatherModel = await apiService.getWeather(cityName: latLng);
      } else {
        weatherModel = await apiService.getWeather(cityName: cityName!);
      }

      emit(WeatherSacsess());
    } catch (e) {
      emit(WeatherFillier(errorMassage: e.toString()));
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
