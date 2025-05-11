import 'package:flutter/material.dart';
import 'package:weather/core/styles/app_styles.dart';

class CustomBottonSheet extends StatelessWidget {
  const CustomBottonSheet(
      {super.key, required this.temp, required this.time, required this.image});

  final String time, temp, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 66,
        height: 66,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Text(temp,
                style: AppStyles.styleMedim20(context)
                    .copyWith(color: Colors.white)),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              image,
              height: 60,
              width: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(time,
                style: AppStyles.styleMedim20(context)
                    .copyWith(color: Colors.white))
          ],
        ),
      ),
    );
  }
}
