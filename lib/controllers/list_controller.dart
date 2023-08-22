import 'package:get/get.dart';

class ListController extends GetxController {
  final List _list = [];
  List get list => _list;

  void savedList(int x){
    _list.add(x);
    print(_list);
  }

  void clearList(){
    _list.clear();
    print(_list);
  }
}