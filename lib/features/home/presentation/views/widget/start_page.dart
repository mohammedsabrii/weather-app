import 'package:flutter/material.dart';
import 'package:weather/core/styles/app_styles.dart';
import 'package:weather/core/utils/assets.dart';
import 'package:weather/core/widget/custom_search_bottom.dart';

class StartPage extends StatelessWidget {
  const StartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  Assets.kLogo,
                  height: 244,
                  width: 244,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Center(
                child: Text(
                  'Weather',
                  style: AppStyles.styleBold64(context)
                      .copyWith(color: Colors.white, fontSize: 55),
                ),
              ),
              Center(
                child: Text(
                  'ForeCasts',
                  style: AppStyles.styleMedium64(context)
                      .copyWith(color: const Color(0xFFDDB130), fontSize: 55),
                ),
              ),
              const CustomSearchBottom(),
            ],
          )),
    );
  }
}
