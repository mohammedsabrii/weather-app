import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/widget/custom_search_bottom.dart';
import 'package:weather/features/details/views/manger/cubit/weather_details_cubit/weather_daily_cubit.dart';
import 'package:weather/features/details/views/manger/cubit/weather_details_cubit/weather_daily_states.dart';
import 'package:weather/features/details/views/widget/details_view_list_view.dart';

class WeatherDailyBlocBulider extends StatefulWidget {
  const WeatherDailyBlocBulider({super.key});

  @override
  State<WeatherDailyBlocBulider> createState() =>
      _WeatherDailyBlocBuliderState();
}

class _WeatherDailyBlocBuliderState extends State<WeatherDailyBlocBulider> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WeatherDailyCubit>(context).getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherDailyCubit, WeatherDailyState>(
      builder: (context, state) {
        if (state is WeatherDailySuccessState) {
          return Center(child: DetailsViewListView(state.weatherModel));
        } else if (state is WeatherDailyFailureState) {
          return Text(state.error);
        } else if (state is WeatherDailyLoadingState) {
          return const CircularProgressIndicator();
        } else {
          return const CustomSearchBottom();
        }
      },
    );
  }
}
