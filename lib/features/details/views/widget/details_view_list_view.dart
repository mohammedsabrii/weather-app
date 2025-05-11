import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/widget/custom_botton_sheet.dart';
import 'package:weather/features/details/domin/entities/weather_entitie.dart';
import 'package:weather/features/details/views/manger/cubit/weather_details_cubit/weather_daily_cubit.dart';

// ignore: must_be_immutable
class DetailsViewListView extends StatelessWidget {
  DetailsViewListView(this.weatherDailyEntiti, {super.key});

  List<WeatherDailyEntitie> weatherDailyEntiti;
  @override
  Widget build(BuildContext context) {
    weatherDailyEntiti =
        BlocProvider.of<WeatherDailyCubit>(context).weatherModel!;
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .20,
      child: ListView.builder(
        itemCount: weatherDailyEntiti.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomBottonSheet(
            image: 'assets/image/clear sun.png',
            temp: '${weatherDailyEntiti[index].temperature}°C',
            time:
                '${weatherDailyEntiti[index].weakTime!.day.toString()} : ${weatherDailyEntiti[index].weakTime!.month.toString()}',
          );
        },
      ),
    );
  }
}
