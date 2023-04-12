import 'package:flutter/widgets.dart';

class IndexProvider extends ChangeNotifier{
  int mainListIndex=0;
  int subListIndex=0;
  setMainListIndex(int index){
    mainListIndex=index;
    notifyListeners();
  }
  setSubListIndex(int index){
    subListIndex=index;
    notifyListeners();
  }
}