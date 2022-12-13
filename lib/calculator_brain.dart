import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});

  final int height;
  final int weight;
  double? _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Over-weight';
    } else if (_bmi! >= 18.5) {
      return 'Normal';
    } else {
      return 'Under-weight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25.0) {
      return 'You have higher than normal body weight, try to exercise more!';
    } else if (_bmi! >= 18.5) {
      return 'You have normal body weight, Good Job!';
    } else {
      return 'You have lower than normal body weight, eat more!';
    }
  }
}
