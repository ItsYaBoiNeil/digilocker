import '../controller/onbording_controller.dart';
import 'package:get/get.dart';

class OnbordingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnbordingController());
  }
}
