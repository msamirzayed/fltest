import 'package:flutter/material.dart';
import 'shared.dart';

class iconContent extends StatelessWidget {
  final IconData? icon;
  final String label;

  iconContent({this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 75,
          color: Colors.white,
        ),
        SizedBox(height: 15),
        Text(
          label,
          style: kFonty,
        ),
      ],
    );
  }
}
