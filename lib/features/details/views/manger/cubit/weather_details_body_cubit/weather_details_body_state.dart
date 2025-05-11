part of 'weather_details_body_cubit.dart';

@immutable
sealed class WeatherDetailsBodyState {}

final class WeatherDetailsBodyInitial extends WeatherDetailsBodyState {}

class WeatherDetailsBodyLoadingState extends WeatherDetailsBodyState {}

class WeatherDetailsBodySuccessState extends WeatherDetailsBodyState {
  final WeatherEntitie weatherModel;

  WeatherDetailsBodySuccessState({required this.weatherModel});
}

class WeatherDetailsBodyFailureState extends WeatherDetailsBodyState {
  final String error;

  WeatherDetailsBodyFailureState(this.error);
}
