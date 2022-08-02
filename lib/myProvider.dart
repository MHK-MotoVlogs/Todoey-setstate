import 'dart:ffi';

import'package:flutter/foundation.dart';

import 'datamodel.dart';

class myProviderList with ChangeNotifier{
  List<lisTtitleDatamodel> items=[
    lisTtitleDatamodel('Table needed',false),
    lisTtitleDatamodel('Eggs needed',false),
  ];

  int length(){
    return items.length;
  }

  void addme(lisTtitleDatamodel lt){
    items.add(lt);
    notifyListeners();
  }

}