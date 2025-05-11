import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    required this.tip,
    required this.icon,
    this.onPressed,
  });
  final String tip;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        tooltip: tip,
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 30,
          color: Colors.black,
        ),
      ),
    );
  }
}
