import 'package:get/get.dart';

class TapController extends GetxController{

  int _x = 0;
  int get x => _x;

  void increase(){

    _x++;
    update();
    print(_x);
  }

  void decrease(){
    _x -= 1;
    update();
    print(_x);
  }
}