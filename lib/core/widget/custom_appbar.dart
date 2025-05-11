import 'package:flutter/material.dart';
import 'package:weather/core/styles/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          title,
          style:
              AppStyles.styleRegular24(context).copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
