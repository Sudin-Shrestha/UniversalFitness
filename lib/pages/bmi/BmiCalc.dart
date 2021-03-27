import 'dart:math';

class BmiCalc{

  BmiCalc({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calBmi(){
    _bmi = weight / pow(height/100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25){
      return 'Overweight';
    }else if (_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Under Weight';
    }
  }

  String getInterpret(){
    if (_bmi >= 25){
      return 'You have high BMI. Try to exercise more';
    }else if (_bmi > 18.5){
      return 'You have normal BMI. Good Job!';
    }else{
      return 'You have low BMI try to eat more.';
    }
  }
}