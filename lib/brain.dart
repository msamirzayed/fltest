import 'dart:math';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Brain {
  Brain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0.0;
  String calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterp() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job for having so !!';
    } else {
      return 'You have a lower than normal body weight. You can eat a little bit more';
    }
  }
}
