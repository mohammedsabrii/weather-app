import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/widget/custom_search_bottom.dart';
import 'package:weather/features/home/presentation/manger/cubit/weather_hour_cubit/weather_hour_cubit.dart';
import 'package:weather/features/home/presentation/views/widget/custom_botton_sheet_list_view.dart';

class CustomBottonSheetListViewBlocBulider extends StatefulWidget {
  const CustomBottonSheetListViewBlocBulider({super.key});

  @override
  State<CustomBottonSheetListViewBlocBulider> createState() =>
      _CustomBottonSheetListViewBlocBuliderState();
}

class _CustomBottonSheetListViewBlocBuliderState
    extends State<CustomBottonSheetListViewBlocBulider> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WeatherHourCubit>(context).getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherHourCubit, WeatherHourState>(
      builder: (context, state) {
        if (state is WeatherHourSacsess) {
          return CustomBottonSheetListView(
            weather: state.weather,
          );
        } else if (state is WeatherHourFillier) {
          return Text(state.errorMassage);
        } else if (state is WeatherHourLodeing) {
          return const CircularProgressIndicator();
        } else {
          return const Padding(
            padding: EdgeInsets.all(20),
            child: Center(child: CustomSearchBottom()),
          );
        }
      },
    );
  }
}
