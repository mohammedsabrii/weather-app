part of 'weather_hour_cubit.dart';

@immutable
abstract class WeatherHourState {}

class WeatherHourInitial extends WeatherHourState {}

class WeatherHourSacsess extends WeatherHourState {
  final List<WeatherEntitie> weather;

  WeatherHourSacsess(this.weather);
}

class WeatherHourSacses extends WeatherHourState {}

class WeatherHourFillier extends WeatherHourState {
  final String errorMassage;

  WeatherHourFillier({required this.errorMassage});
}

class WeatherHourLodeing extends WeatherHourState {}
