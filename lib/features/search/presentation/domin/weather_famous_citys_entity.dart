class WeatherFamousCitiesEntity {
  final num temperature;
  final String weatherState;
  final String location;
  final num minTemp;
  final num maxTemp;
  final DateTime timeNow;
  WeatherFamousCitiesEntity({
    required this.temperature,
    required this.weatherState,
    required this.location,
    required this.minTemp,
    required this.maxTemp,
    required this.timeNow,
  });

  factory WeatherFamousCitiesEntity.fromJson(Map<String, dynamic> json) {
    return WeatherFamousCitiesEntity(
      temperature: json['current']['temp_c'].toDouble(),
      weatherState: json['current']['condition']['text'],
      location: json['location']['name'],
      minTemp:
          json['forecast']['forecastday'][0]['day']['mintemp_c'].toDouble(),
      maxTemp:
          json['forecast']['forecastday'][0]['day']['maxtemp_c'].toDouble(),
      timeNow: DateTime.parse(json['location']['localtime']),
    );
  }
  String getWeatherDayImage() {
    if (weatherState == 'Sunny' ||
        weatherState == 'Clear' ||
        weatherState == 'partly cloudy') {
      return 'assets/image/clear sun.png';
    } else if (weatherState == 'Blizzard' ||
        weatherState == 'Patchy snow possible' ||
        weatherState == 'Patchy sleet possible' ||
        weatherState == 'Patchy freezing drizzle possible' ||
        weatherState == 'Blowing snow') {
      return 'assets/image/snow.png';
    } else if (weatherState == 'Freezing fog' ||
        weatherState == 'Fog' ||
        weatherState == 'Heavy Cloud' ||
        weatherState == 'Mist' ||
        weatherState == 'Fog' ||
        weatherState == 'Partly cloudy' ||
        weatherState == 'Overcast') {
      return 'assets/image/cloudy-day.png';
    } else if (weatherState == 'Patchy rain possible' ||
        weatherState == 'Heavy Rain' ||
        weatherState == 'Showers	' ||
        weatherState == 'Patchy rain nearby' ||
        weatherState == 'Light Rain') {
      return 'assets/image/Sun cloud mid rain.png';
    } else if (weatherState == 'Thundery outbreaks possible' ||
        weatherState == 'Moderate or heavy snow with thunder' ||
        weatherState == 'Patchy light snow with thunder' ||
        weatherState == 'Moderate or heavy rain with thunder' ||
        weatherState == 'Patchy light rain with thunder') {
      return 'assets/image/logo.png';
    } else {
      return 'assets/image/clear sun.png';
    }
  }

  String getWeatherNightImage() {
    if (weatherState == 'Sunny' ||
        weatherState == 'Clear' ||
        weatherState == 'partly cloudy') {
      return 'assets/image/clear moon.png';
    } else if (weatherState == 'Blizzard' ||
        weatherState == 'Patchy snow possible' ||
        weatherState == 'Patchy sleet possible' ||
        weatherState == 'Patchy freezing drizzle possible' ||
        weatherState == 'Blowing snow') {
      return 'assets/image/snow.png';
    } else if (weatherState == 'Freezing fog' ||
        weatherState == 'Fog' ||
        weatherState == 'Heavy Cloud' ||
        weatherState == 'Mist' ||
        weatherState == 'Fog' ||
        weatherState == 'Partly cloudy' ||
        weatherState == 'Overcast') {
      return 'assets/image/cloudy-night.png';
    } else if (weatherState == 'Patchy rain possible' ||
        weatherState == 'Heavy Rain' ||
        weatherState == 'Showers	' ||
        weatherState == 'Patchy rain nearby' ||
        weatherState == 'Light Rain') {
      return 'assets/image/Moon cloud mid rain.png';
    } else if (weatherState == 'Thundery outbreaks possible' ||
        weatherState == 'Moderate or heavy snow with thunder' ||
        weatherState == 'Patchy light snow with thunder' ||
        weatherState == 'Moderate or heavy rain with thunder' ||
        weatherState == 'Patchy light rain with thunder') {
      return 'assets/image/Moon cloud mid rain.png';
    } else {
      return 'assets/image/clear moon.png';
    }
  }

  String getWeatherImage() {
    if (timeNow.hour < 7) {
      return getWeatherNightImage();
    } else if (timeNow.hour < 17) {
      return getWeatherDayImage();
    } else {
      return getWeatherNightImage();
    }
  }
}
