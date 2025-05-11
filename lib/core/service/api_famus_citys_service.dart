import 'package:dio/dio.dart';
import 'package:weather/core/utils/keys.dart';
import 'package:weather/features/search/presentation/domin/weather_famous_citys_entity.dart';

class WeatherFamousCitiesService {
  final Dio dio;
  String baseUrl = 'https://api.weatherapi.com/v1';

  WeatherFamousCitiesService(this.dio);

  Future<WeatherFamousCitiesEntity> fetchWeather(String city) async {
    var response =
        await dio.get('$baseUrl/forecast.json?key=$mainApiKey&q=$city&days=7');

    Map<String, dynamic> jsonData = response.data;
    WeatherFamousCitiesEntity weatherModel =
        WeatherFamousCitiesEntity.fromJson(jsonData);
    return weatherModel;
  }
}
