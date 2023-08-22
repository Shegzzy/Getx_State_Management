import 'package:get/get.dart';
import 'package:getx_state_management/controllers/list_controller.dart';
import 'package:getx_state_management/controllers/tap_controller.dart';

class InitDep implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ListController());
    Get.lazyPut(() => TapController());
  }

}