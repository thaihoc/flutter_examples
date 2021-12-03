import 'package:example_getx/src/controller/x_controller.dart';
import 'package:get/get.dart';

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerX>(() => ControllerX());
  }
}