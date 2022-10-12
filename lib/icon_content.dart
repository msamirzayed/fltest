import 'package:flutter/material.dart';

class iconContent extends StatelessWidget {
  final IconData? icon;
  final String label;
  final fonty = TextStyle(
    fontSize: 18,
    color: Color(0xFF8D8E98),
  );

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
          style: fonty,
        ),
      ],
    );
  }
}
