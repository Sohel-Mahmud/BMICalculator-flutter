import 'dart:math';
class CalculatorBrain{
  final int height, weight, age;
  double _bmi;

  CalculatorBrain({this.height, this.weight, this.age});

  String calculateBMI(){
    _bmi = weight/ pow(height/100,2);

    return _bmi.toStringAsFixed(2);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if( _bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

   String getInterpretation(){
    if(_bmi >= 25){
      return 'You have higher than normal body weihgt, try to excercise more.';
    }else if( _bmi > 18.5){
      return 'You have a normal body weight, Good job!';
    }else{
      return 'You have a lower than normal body weight, You can eat a bit more.';
    }
  }
}