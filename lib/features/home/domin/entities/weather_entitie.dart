class WeatherEntitie {
  final num? temperature;
  final String? weatherState;
  final double? hightDgree;
  final double? lowDgree;
  final String? hourState;
  final DateTime? hourTime;
  final double? hourTemp;
  final String? cintyName;
  final String? countryName;
  final DateTime? timeNow;
  final String? weakState;
  final DateTime? weakTime;
  final double? weakTemp;
  final num? uvIndex;
  final num? wind;
  final num? totalPrecip;
  final num? humidity;
  final String? moonPhase;
  final String? sunRise;

  WeatherEntitie({
    this.temperature,
    this.weatherState,
    this.hightDgree,
    this.lowDgree,
    this.hourState,
    this.hourTime,
    this.hourTemp,
    this.cintyName,
    this.countryName,
    this.timeNow,
    this.weakState,
    this.weakTemp,
    this.weakTime,
    this.uvIndex,
    this.wind,
    this.totalPrecip,
    this.humidity,
    this.moonPhase,
    this.sunRise,
  });
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
        weatherState == 'Light rain') {
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
        weatherState == 'Heavy rain' ||
        weatherState == 'Showers	' ||
        weatherState == 'Patchy rain nearby' ||
        weatherState == 'Light rain') {
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

  String getWeatherDayHourlyImage() {
    if (hourState == 'Sunny' ||
        hourState == 'Clear' ||
        weatherState == 'partly cloudy') {
      return 'assets/image/clear sun.png';
    } else if (hourState == 'Blizzard' ||
        hourState == 'Patchy snow possible' ||
        hourState == 'Patchy sleet possible' ||
        hourState == 'Patchy freezing drizzle possible' ||
        hourState == 'Blowing snow') {
      return 'assets/image/snow.png';
    } else if (hourState == 'Freezing fog' ||
        hourState == 'Fog' ||
        hourState == 'Heavy Cloud' ||
        hourState == 'Mist' ||
        hourState == 'Fog' ||
        hourState == 'Partly cloudy' ||
        hourState == 'Overcast') {
      return 'assets/image/cloudy-day.png';
    } else if (hourState == 'Patchy rain possible' ||
        hourState == 'Heavy rain' ||
        hourState == 'Showers	' ||
        hourState == 'Patchy rain nearby' ||
        hourState == 'Light rain') {
      return 'assets/image/Sun cloud mid rain.png';
    } else if (hourState == 'Thundery outbreaks possible' ||
        hourState == 'Moderate or heavy snow with thunder' ||
        hourState == 'Patchy light snow with thunder' ||
        hourState == 'Moderate or heavy rain with thunder' ||
        hourState == 'Patchy light rain with thunder') {
      return 'assets/image/logo.png';
    } else {
      return 'assets/image/clear sun.png';
    }
  }

  String getWeatherNightHourlyImage() {
    if (hourState == 'Sunny' ||
        hourState == 'Clear' ||
        hourState == 'partly cloudy') {
      return 'assets/image/clear moon.png';
    } else if (hourState == 'Blizzard' ||
        hourState == 'Patchy snow possible' ||
        hourState == 'Patchy sleet possible' ||
        hourState == 'Patchy freezing drizzle possible' ||
        hourState == 'Blowing snow') {
      return 'assets/image/snow.png';
    } else if (hourState == 'Freezing fog' ||
        hourState == 'Fog' ||
        hourState == 'Heavy cloud' ||
        hourState == 'Mist' ||
        hourState == 'Fog' ||
        hourState == 'Partly cloudy' ||
        hourState == 'Overcast') {
      return 'assets/image/cloudy-night.png';
    } else if (hourState == 'Patchy rain possible' ||
        hourState == 'Heavy rain' ||
        hourState == 'Showers	' ||
        hourState == 'Patchy rain nearby' ||
        hourState == 'Light rain') {
      return 'assets/image/Moon cloud mid rain.png';
    } else if (hourState == 'Thundery outbreaks possible' ||
        hourState == 'Moderate or heavy snow with thunder' ||
        hourState == 'Patchy light snow with thunder' ||
        hourState == 'Moderate or heavy rain with thunder' ||
        hourState == 'Patchy light rain with thunder') {
      return 'assets/image/Moon cloud mid rain.png';
    } else {
      return 'assets/image/clear moon.png';
    }
  }

  String getWeatherWeakDayImage() {
    if (weakState == 'Sunny' ||
        weakState == 'Clear' ||
        weakState == 'partly cloudy') {
      return 'assets/image/clear sun.png';
    } else if (weakState == 'Blizzard' ||
        weakState == 'Patchy snow possible' ||
        weakState == 'Patchy sleet possible' ||
        weakState == 'Patchy freezing drizzle possible' ||
        weakState == 'Blowing snow') {
      return 'assets/image/snow.png';
    } else if (weakState == 'Freezing fog' ||
        weakState == 'Fog' ||
        weakState == 'Heavy Cloud' ||
        weakState == 'Mist' ||
        weakState == 'Fog' ||
        weakState == 'Partly cloudy' ||
        weakState == 'Overcast') {
      return 'assets/image/cloudy-day.png';
    } else if (weakState == 'Patchy rain possible' ||
        weakState == 'Heavy Rain' ||
        weakState == 'Showers	' ||
        weakState == 'Patchy rain nearby' ||
        weakState == 'Light Rain') {
      return 'assets/image/Sun cloud mid rain.png';
    } else if (weakState == 'Thundery outbreaks possible' ||
        weakState == 'Moderate or heavy snow with thunder' ||
        weakState == 'Patchy light snow with thunder' ||
        weakState == 'Moderate or heavy rain with thunder' ||
        weakState == 'Patchy light rain with thunder') {
      return 'assets/image/logo.png';
    } else {
      return 'assets/image/clear sun.png';
    }
  }

  String getWeatherWeakNightImage() {
    if (weakState == 'Sunny' ||
        weakState == 'Clear' ||
        weakState == 'partly cloudy') {
      return 'assets/image/clear moon.png';
    } else if (weakState == 'Blizzard' ||
        weakState == 'Patchy snow possible' ||
        weakState == 'Patchy sleet possible' ||
        weakState == 'Patchy freezing drizzle possible' ||
        weakState == 'Blowing snow') {
      return 'assets/image/snow.png';
    } else if (weakState == 'Freezing fog' ||
        weakState == 'Fog' ||
        weakState == 'Heavy Cloud' ||
        weakState == 'Mist' ||
        weakState == 'Fog' ||
        weakState == 'Partly cloudy' ||
        weakState == 'Overcast') {
      return 'assets/image/cloudy-night.png';
    } else if (weakState == 'Patchy rain possible' ||
        weakState == 'Heavy Rain' ||
        weakState == 'Showers	' ||
        weakState == 'Patchy rain nearby' ||
        weakState == 'Light Rain') {
      return 'assets/image/Moon cloud mid rain.png';
    } else if (weakState == 'Thundery outbreaks possible' ||
        weakState == 'Moderate or heavy snow with thunder' ||
        weakState == 'Patchy light snow with thunder' ||
        weakState == 'Moderate or heavy rain with thunder' ||
        weakState == 'Patchy light rain with thunder') {
      return 'assets/image/Moon cloud mid rain.png';
    } else {
      return 'assets/image/clear moon.png';
    }
  }
}
