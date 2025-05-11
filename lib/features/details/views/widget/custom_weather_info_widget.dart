import 'package:flutter/material.dart';
import 'package:weather/core/styles/app_styles.dart';

class CustomWeatherInfoWidget extends StatelessWidget {
  const CustomWeatherInfoWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.body,
      required this.discrbtion});
  final String title, body, discrbtion;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .22,
      width: MediaQuery.sizeOf(context).width * .43,
      decoration: BoxDecoration(
        // border: Border.all(color: const Color(0x999432788)),
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF3A3780),
            // Color(0xFF4E3E9B),
            Color(0xFF7A50AF),
            Color(0xFF8F4EA9),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: const Color(0xFF9593AA),
                  size: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  style: AppStyles.styleRegule13(context)
                      .copyWith(color: const Color(0xFF9593AA), fontSize: 16),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              body,
              style: AppStyles.styleRegular24(context)
                  .copyWith(color: Colors.white, fontSize: 28),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              discrbtion,
              style: AppStyles.styleRegular24(context)
                  .copyWith(color: Colors.white, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
