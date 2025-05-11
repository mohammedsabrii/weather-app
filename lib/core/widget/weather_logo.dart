import 'package:flutter/material.dart';
import 'package:weather/core/styles/app_styles.dart';
import 'package:weather/core/utils/assets.dart';

class WeatherLogo extends StatelessWidget {
  const WeatherLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            Assets.kLogo,
            height: 428,
            width: 428,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Center(
          child: Text(
            'Weather',
            style: AppStyles.styleBold64(context).copyWith(color: Colors.white),
          ),
        ),
        Center(
          child: Text(
            'ForeCasts',
            style: AppStyles.styleMedium64(context)
                .copyWith(color: const Color(0xFFDDB130)),
          ),
        ),
      ],
    );
  }
}
