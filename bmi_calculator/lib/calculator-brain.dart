import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    _bmi.toStringAsFixed(1);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterPretation() {
    if (_bmi >= 25) {
      return 'Try to exercies more,';
    } else if (_bmi > 18.5) {
      return 'Good Job..';
    } else {
      return 'You can eat a bit more';
    }
  }
}
