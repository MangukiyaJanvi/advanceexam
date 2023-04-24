import 'package:flutter/foundation.dart';

class PatternProvider extends ChangeNotifier
{
  int i=0;
  double SliderValue=0;
  double rows = 5;

  int j=0;

  void ChangeValue(double value)
  {
    SliderValue=value;
    notifyListeners();
  }
  void ChangeRow()
  {
    rows=SliderValue;
    notifyListeners();
  }
}