import 'package:flutter/material.dart';
import 'package:weather/core/utils/assets.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          image: AssetImage(Assets.kHouse),
        ),
      ),
      child: child,
    );
  }
}
