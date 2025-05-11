import 'package:dio/dio.dart';
import 'package:weather/core/utils/keys.dart';
import 'package:weather/features/home/data/models/weather_model/hour.dart';
import 'package:weather/features/home/domin/entities/weather_entitie.dart';

class ApiServiceHour {
  final Dio dio;
  String baseUrl = 'https://api.weatherapi.com/v1';

  ApiServiceHour(this.dio);

  Future<List<WeatherEntitie>> getHourWeather(
      {required String cityName}) async {
    var response = await dio
        .get('$baseUrl/forecast.json?key=$mainApiKey&q=$cityName&days=7');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> hourData = jsonData['forecast']['forecastday'][0]['hour'];

    List<WeatherEntitie> weatherList = [];

    for (int i = 0; i < hourData.length; i++) {
      weatherList.add(
        Hour.fromJson(hourData[i]),
      );
    }

    return weatherList;
  }
}
