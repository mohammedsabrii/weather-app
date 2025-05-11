import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/widget/custom_search_bottom.dart';
import 'package:weather/features/details/views/manger/cubit/weather_details_body_cubit/weather_details_body_cubit.dart';
import 'package:weather/features/details/views/widget/weather_details_body.dart';

class WeatherDetailsBodyBlocBulider extends StatefulWidget {
  const WeatherDetailsBodyBlocBulider({super.key});

  @override
  State<WeatherDetailsBodyBlocBulider> createState() =>
      _WeatherDetailsBodyBlocBuliderState();
}

class _WeatherDetailsBodyBlocBuliderState
    extends State<WeatherDetailsBodyBlocBulider> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WeatherDetailsBodyCubit>(context).getDetailsBody();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherDetailsBodyCubit, WeatherDetailsBodyState>(
      builder: (context, state) {
        if (state is WeatherDetailsBodySuccessState) {
          return WeatherDetailsBody(
            weather: state.weatherModel,
          );
        } else if (state is WeatherDetailsBodyFailureState) {
          return Text(state.error);
        } else if (state is WeatherDetailsBodyLoadingState) {
          return const CircularProgressIndicator();
        } else {
          return const Center(child: CustomSearchBottom());
        }
      },
    );
  }
}
