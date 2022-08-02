import 'package:flutter/foundation.dart';

class lisTtitleDatamodel with ChangeNotifier{
  late String text;
  late bool _value=false;

  lisTtitleDatamodel(this.text, this._value);

  set values(bool value) {
    _value = value;
  }

  bool get value => _value;

  void toggle(bool newvalue){
    _value=newvalue;
    notifyListeners();
  }
}