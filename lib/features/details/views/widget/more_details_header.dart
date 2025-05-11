import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather/core/styles/app_styles.dart';

class MoreDetailsHeader extends StatelessWidget {
  const MoreDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.list,
          size: 24,
          color: Colors.white,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          'More Details',
          style:
              AppStyles.styleRegular24(context).copyWith(color: Colors.white),
        )
      ],
    );
  }
}
