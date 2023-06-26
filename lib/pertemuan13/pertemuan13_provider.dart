import 'package:flutter/material.dart';

class Pertemuan13Provider extends ChangeNotifier {
  double _sliderValue = 0;
  double get sliderValue => _sliderValue;
  set setSliderValue(val) {
    _sliderValue = val;
    notifyListeners();
  }

  bool _sedangMemanggang = false;
  bool get sedangMemanggang => _sedangMemanggang;
  set setSedangMemanggang(val) {
    _sedangMemanggang = val;
    notifyListeners();
  }

  bool _selesaiMasak = false;
  bool get selesaiMasak => _selesaiMasak;
  set setSelesaiMasak(val) {
    _selesaiMasak = val;
    notifyListeners();
  }

  double _progress = 0.0;
  double get progress => _progress;
  set setProgress(double value) {
    _progress = value;
    notifyListeners();
  }

  mulaiMemanggang(int val) async {
    setSedangMemanggang = true;
    for (int i = 0; i <= val; i++) {
      await Future.delayed(Duration(seconds: 1));
      setProgress = i.toDouble();
    }
    setSedangMemanggang = false;
    setSelesaiMasak = true;
  }
}
