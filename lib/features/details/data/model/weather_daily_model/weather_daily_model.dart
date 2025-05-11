import 'package:weather/features/details/domin/entities/weather_entitie.dart';

import 'weather.dart';

class WeatherDailyModel extends WeatherDailyEntitie {
  int? appMaxTemp;
  double? appMinTemp;
  num? clouds;
  num? cloudsHi;
  num? cloudsLow;
  num? cloudsMid;
  DateTime? datetime;
  double? dewpt;
  num? highTemp;
  double? lowTemp;
  dynamic maxDhi;
  double? maxTemp;
  double? minTemp;
  double? moonPhase;
  double? moonPhaseLunation;
  num? moonriseTs;
  num? moonsetTs;
  dynamic ozone;
  num? pop;
  double? precip;
  num? pres;
  num? rh;
  num? slp;
  num? snow;
  num? snowDepth;
  num? sunriseTs;
  num? sunsetTs;
  double? temp;
  num? ts;
  num? uv;
  String? validDate;
  dynamic vis;
  Weather? weather;
  String? windCdir;
  String? windCdirFull;
  num? windDir;
  double? windGustSpd;
  double? windSpd;

  WeatherDailyModel({
    this.appMaxTemp,
    this.appMinTemp,
    this.clouds,
    this.cloudsHi,
    this.cloudsLow,
    this.cloudsMid,
    this.datetime,
    this.dewpt,
    this.highTemp,
    this.lowTemp,
    this.maxDhi,
    this.maxTemp,
    this.minTemp,
    this.moonPhase,
    this.moonPhaseLunation,
    this.moonriseTs,
    this.moonsetTs,
    this.ozone,
    this.pop,
    this.precip,
    this.pres,
    this.rh,
    this.slp,
    this.snow,
    this.snowDepth,
    this.sunriseTs,
    this.sunsetTs,
    this.temp,
    this.ts,
    this.uv,
    this.validDate,
    this.vis,
    this.weather,
    this.windCdir,
    this.windCdirFull,
    this.windDir,
    this.windGustSpd,
    this.windSpd,
  }) : super(
          temperature: appMaxTemp,
          weakTime: datetime,
          weatherState: weather?.description ?? '',
          windDirection: windCdirFull,
        );

  factory WeatherDailyModel.fromJson(Map<String, dynamic> json) {
    return WeatherDailyModel(
      appMaxTemp: (json['app_max_temp'] as num?)?.toInt(),
      appMinTemp: (json['app_min_temp'] as num?)?.toDouble(),
      clouds: json['clouds'] as num?,
      cloudsHi: json['clouds_hi'] as num?,
      cloudsLow: json['clouds_low'] as num?,
      cloudsMid: json['clouds_mid'] as num?,
      datetime: DateTime.parse(json['datetime'] as String),
      dewpt: (json['dewpt'] as num?)?.toDouble(),
      highTemp: json['high_temp'] as num?,
      lowTemp: (json['low_temp'] as num?)?.toDouble(),
      maxDhi: json['max_dhi'] as dynamic,
      maxTemp: (json['max_temp'] as num?)?.toDouble(),
      minTemp: (json['min_temp'] as num?)?.toDouble(),
      moonPhase: (json['moon_phase'] as num?)?.toDouble(),
      moonPhaseLunation: (json['moon_phase_lunation'] as num?)?.toDouble(),
      moonriseTs: json['moonrise_ts'] as num?,
      moonsetTs: json['moonset_ts'] as num?,
      ozone: json['ozone'] as dynamic,
      pop: json['pop'] as num?,
      precip: (json['precip'] as num?)?.toDouble(),
      pres: json['pres'] as num?,
      rh: json['rh'] as num?,
      slp: json['slp'] as num?,
      snow: json['snow'] as num?,
      snowDepth: json['snow_depth'] as num?,
      sunriseTs: json['sunrise_ts'] as num?,
      sunsetTs: json['sunset_ts'] as num?,
      temp: (json['temp'] as num?)?.toDouble(),
      ts: json['ts'] as num?,
      uv: json['uv'] as num?,
      validDate: json['valid_date'] as String?,
      vis: json['vis'] as dynamic,
      weather: Weather.fromJson(json['weather'] as Map<String, dynamic>),
      windCdir: json['wind_cdir'] as String?,
      windCdirFull: json['wind_cdir_full'] as String?,
      windDir: json['wind_dir'] as num?,
      windGustSpd: (json['wind_gust_spd'] as num?)?.toDouble(),
      windSpd: (json['wind_spd'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        'app_max_temp': appMaxTemp,
        'app_min_temp': appMinTemp,
        'clouds': clouds,
        'clouds_hi': cloudsHi,
        'clouds_low': cloudsLow,
        'clouds_mid': cloudsMid,
        'datetime': datetime,
        'dewpt': dewpt,
        'high_temp': highTemp,
        'low_temp': lowTemp,
        'max_dhi': maxDhi,
        'max_temp': maxTemp,
        'min_temp': minTemp,
        'moon_phase': moonPhase,
        'moon_phase_lunation': moonPhaseLunation,
        'moonrise_ts': moonriseTs,
        'moonset_ts': moonsetTs,
        'ozone': ozone,
        'pop': pop,
        'precip': precip,
        'pres': pres,
        'rh': rh,
        'slp': slp,
        'snow': snow,
        'snow_depth': snowDepth,
        'sunrise_ts': sunriseTs,
        'sunset_ts': sunsetTs,
        'temp': temp,
        'ts': ts,
        'uv': uv,
        'valid_date': validDate,
        'vis': vis,
        'weather': weather?.toJson(),
        'wind_cdir': windCdir,
        'wind_cdir_full': windCdirFull,
        'wind_dir': windDir,
        'wind_gust_spd': windGustSpd,
        'wind_spd': windSpd,
      };
}
