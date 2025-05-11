import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/styles/app_styles.dart';
import 'package:weather/core/widget/custom_appbar.dart';
import 'package:weather/features/details/domin/entities/weather_entitie.dart';
import 'package:weather/features/details/views/manger/cubit/weather_details_cubit/weather_daily_cubit.dart';
import 'package:weather/features/details/views/widget/details_view_bloc_bulder.dart';
import 'package:weather/features/details/views/widget/weather_daily_bloc_bulider.dart';
import 'package:weather/features/details/views/widget/more_details_header.dart';
import 'package:weather/features/home/domin/entities/weather_entitie.dart';
import 'package:weather/features/home/presentation/manger/cubit/weather_cubit/wather_cubit.dart';

class DateilsViewBody extends StatefulWidget {
  const DateilsViewBody({
    super.key,
  });

  @override
  State<DateilsViewBody> createState() => _DateilsViewBodyState();
}

class _DateilsViewBodyState extends State<DateilsViewBody> {
  WeatherEntitie? weatherModel;
  List<WeatherDailyEntitie>? weatherDailyEntitie;
  @override
  Widget build(BuildContext context) {
    weatherModel = BlocProvider.of<WeatherCubit>(context).weatherModel;
    weatherDailyEntitie =
        BlocProvider.of<WeatherDailyCubit>(context).weatherModel;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const CustomAppBar(title: 'Weather Details'),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: CustomScrollView(slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '16 Days Forcast',
                        style: AppStyles.styleMedim23(context)
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        color: Color(0xFF8E78C8),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const WeatherDailyBlocBulider(),
                      const Divider(
                        color: Color(0xFF8E78C8),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const MoreDetailsHeader(),
                      const SizedBox(
                        height: 20,
                      ),
                      const WeatherDetailsBodyBlocBulider(),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
