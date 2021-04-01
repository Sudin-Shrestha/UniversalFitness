import 'dart:math';


//66.47 + (13.75 * weight [kg]) + (5.003 * size [cm]) − (6.755 * age [years])
class BmrCalc{

  BmrCalc({this.height, this.weight, this.age});

  final int height;
  final int weight;
  final int age;

  double _bmr;

  String calBmr(){
    _bmr = 6.47 + (13.75 * weight) + (5.003 * height) - (6.755 * age );

    return _bmr.toStringAsFixed(1);
  }

  String getResults(){
    if (_bmr > 1800){
      return 'Over Calories';
    }else if (_bmr < 1600){
      return 'Low Calories';
    }else{
      return 'Normal';
    }
  }

  String getInterprets(){
    if (_bmr > 1800){
      return 'You have high BMR. Try to exercise more and burn calories.';
    }else if (_bmr < 1600){
      return 'You have low BMR. your metabolism is slower.';
    }else{
      return 'Your BMR is normal! good job.';
    }
  }
}