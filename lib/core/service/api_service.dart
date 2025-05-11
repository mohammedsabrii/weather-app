import 'package:dio/dio.dart';
import 'package:weather/core/utils/keys.dart';
import 'package:weather/features/home/data/models/weather_model/weather_model.dart';

class ApiService {
  final Dio dio;
  String baseUrl = 'https://api.weatherapi.com/v1';

  ApiService(this.dio);

  Future<WeatherModel> getWeather({required String cityName}) async {
    var response = await dio
        .get('$baseUrl/forecast.json?key=$mainApiKey&q=$cityName&days=7');

    Map<String, dynamic> jsonData = response.data;
    WeatherModel weatherModel = WeatherModel.fromJson(jsonData);
    return weatherModel;
  }
}
