class WeatherDailyEntitie {
  final num? temperature;
  final String? weatherState;
  final String? windDirection;
  final DateTime? weakTime;

  WeatherDailyEntitie(
      {this.windDirection, this.temperature, this.weatherState, this.weakTime});
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
}
