import 'package:dio/dio.dart';
import 'package:weather/core/utils/keys.dart';
import 'package:weather/features/details/data/model/weather_daily_model/weather_daily_model.dart';

class WeatherServiceWeak {
  final Dio dio;

  WeatherServiceWeak(this.dio);

  final String baseUrl = 'https://api.weatherbit.io/v2.0/forecast';

  Future<List<WeatherDailyModel>> getForcast({required String cityName}) async {
    Response response =
        await dio.get('$baseUrl/daily?$cityName&key=$dayApiKey');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> hourData = jsonData['data'];

    List<WeatherDailyModel> weatherList = [];

    for (int i = 0; i < hourData.length; i++) {
      weatherList.add(
        WeatherDailyModel.fromJson(hourData[i]),
      );
    }

    return weatherList;
  }
}
