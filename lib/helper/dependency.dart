import 'package:get/get.dart';
import 'package:getx_state_management/controllers/list_controller.dart';
import 'package:getx_state_management/controllers/tap_controller.dart';

Future<void> init() async {
  Get.lazyPut(() => ListController());
  Get.lazyPut(() => TapController());
}