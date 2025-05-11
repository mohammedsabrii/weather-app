import 'package:weather/features/details/domin/entities/weather_entitie.dart';

class WeatherDailyState {}

class WeatherInitialState extends WeatherDailyState {}

class WeatherDailyLoadingState extends WeatherDailyState {}

class WeatherDailySuccessState extends WeatherDailyState {
  final List<WeatherDailyEntitie> weatherModel;
  WeatherDailySuccessState(this.weatherModel);
}

class WeatherDailyFailureState extends WeatherDailyState {
  final String error;

  WeatherDailyFailureState(this.error);
}
//
