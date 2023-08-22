import 'package:get/get.dart';

class TapController extends GetxController{

  int _x = 0;
  int get x => _x;

  int _y = 0;
  int get y => _y;

  int _z = 0;
  int get z => _z;

  void increase(){

    _x++;
    update();
  }

  void decrease(){
    _x -= 1;
    update();
  }

  void increaseY(){
    _y+=1;
    update();
  }

  void sumXY(){
    _z = _x + _y;
    update();
  }
}