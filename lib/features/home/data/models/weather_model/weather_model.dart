import 'package:weather/features/home/domin/entities/weather_entitie.dart';

import 'current.dart';
import 'forecast.dart';
import 'location.dart';

class WeatherModel extends WeatherEntitie {
  Location? location;
  Current? current;
  Forecast? forecast;

  WeatherModel({this.location, this.current, this.forecast})
      : super(
          temperature: current?.tempC ?? 0,
          weatherState: current?.condition?.text ?? 'Unknow',
          hightDgree: forecast?.forecastday?.first.day?.maxtempC ?? 0,
          lowDgree: forecast?.forecastday?.first.day?.mintempC ?? 0,
          cintyName: location?.name ?? 'Unknow',
          countryName: location?.country ?? 'Unknow',
          timeNow: DateTime.parse(location?.localtime ?? 'Unknow'),
          weakState:
              forecast?.forecastday?.first.day?.condition?.text ?? 'Unknow',
          weakTemp: forecast?.forecastday?.first.day?.avgtempC ?? 0,
          weakTime:
              DateTime.parse(forecast?.forecastday?.first.date ?? 'Unknow'),
          uvIndex: forecast?.forecastday?.first.day?.uv ?? 0,
          sunRise: forecast?.forecastday?.first.astro?.sunrise ?? 'Unknow',
          wind: forecast?.forecastday?.first.day?.maxwindKph ?? 0,
          totalPrecip: forecast?.forecastday?.first.day?.totalprecipMm ?? 0,
          moonPhase: forecast?.forecastday?.first.astro?.moonPhase ?? 'Unknow',
          humidity: forecast?.forecastday?.first.day?.avghumidity ?? 0,
        );

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        location: json['location'] == null
            ? null
            : Location.fromJson(json['location'] as Map<String, dynamic>),
        current: json['current'] == null
            ? null
            : Current.fromJson(json['current'] as Map<String, dynamic>),
        forecast: json['forecast'] == null
            ? null
            : Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'location': location?.toJson(),
        'current': current?.toJson(),
        'forecast': forecast?.toJson(),
      };
}
