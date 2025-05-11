import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/styles/app_styles.dart';
import 'package:weather/features/home/domin/entities/weather_entitie.dart';
import 'package:weather/features/home/presentation/manger/cubit/weather_cubit/wather_cubit.dart';
import 'package:weather/features/home/presentation/manger/cubit/weather_cubit/wather_state.dart';
import 'package:weather/features/home/presentation/views/widget/custom_temp_diteils_bloc_bulider.dart';
import 'package:weather/features/home/presentation/views/widget/start_page.dart';

class CustomInfoWeatherbody extends StatefulWidget {
  const CustomInfoWeatherbody({super.key});

  @override
  State<CustomInfoWeatherbody> createState() => _CustomInfoWeatherbodyState();
}

class _CustomInfoWeatherbodyState extends State<CustomInfoWeatherbody> {
  WeatherEntitie? weather;
  @override
  void initState() {
    super.initState();

    BlocProvider.of<WeatherCubit>(context).getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is WeatherLodeing) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is WeatherSacsess) {
          return CustomTebDiteilesBlocBulider();
        } else if (state is WeatherFillier) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              state.errorMassage,
              textAlign: TextAlign.center,
              style: AppStyles.styleRegular22(context)
                  .copyWith(color: Colors.white),
            ),
          );
        } else {
          return const StartPage();
        }
      },
    );
  }
}
