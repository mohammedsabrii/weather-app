abstract class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLodeing extends WeatherState {}

class WeatherSacsess extends WeatherState {}

class WeatherLocatoinSacsess extends WeatherState {}

class WeatherFillier extends WeatherState {
  final String errorMassage;

  WeatherFillier({required this.errorMassage});
}
