import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/core/styles/app_styles.dart';
import 'package:weather/core/utils/app_router.dart';

class CustomSearchBottom extends StatelessWidget {
  const CustomSearchBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.ksearchView);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFFDDB130),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          'Top To Search ',
          textAlign: TextAlign.center,
          style: AppStyles.styleMedim20(context).copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
