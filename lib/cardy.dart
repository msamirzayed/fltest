import 'package:flutter/material.dart';

class Cardy extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;

  Cardy({required this.colour, this.cardChild});

  // 0xFF1D1E33
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
