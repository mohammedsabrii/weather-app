import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/core/service/api_famus_citys_service.dart';
import 'package:weather/features/search/presentation/domin/weather_famous_citys_entity.dart';
import 'package:weather/features/search/presentation/views/widget/temperature_information.dart';

class WeatherItem extends StatelessWidget {
  final String city;

  const WeatherItem({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WeatherFamousCitiesEntity>(
      future: WeatherFamousCitiesService(Dio()).fetchWeather(city),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: CircularProgressIndicator(),
          ));
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          WeatherFamousCitiesEntity weatherEntity = snapshot.data!;

          return Padding(
            padding: const EdgeInsets.only(top: 7, bottom: 7),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  'assets/image/Rectangle.png',
                  width: MediaQuery.sizeOf(context).width,
                ),
                Positioned(
                  top: -10,
                  right: 0,
                  child: Image.asset(
                    weatherEntity.getWeatherImage(),
                    height: 150,
                    width: 150,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 28,
                  child: Text(
                    '${weatherEntity.temperature.toInt()}°',
                    style: const TextStyle(fontSize: 64, color: Colors.white),
                  ),
                ),
                Positioned(
                  left: 28,
                  bottom: 20,
                  child: TemperatureInformation(
                    minTemp: weatherEntity.minTemp.toInt(),
                    maxTemp: weatherEntity.maxTemp.toInt(),
                    location: weatherEntity.location,
                  ),
                ),
                Positioned(
                  right: 28,
                  bottom: 20,
                  child: Text(
                    weatherEntity.weatherState,
                    textAlign: TextAlign.right,
                    style: const TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Center(child: Text('No Data Available'));
        }
      },
    );
  }
}
