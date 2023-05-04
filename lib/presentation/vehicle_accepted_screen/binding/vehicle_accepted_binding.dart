import '../controller/vehicle_accepted_controller.dart';
import 'package:get/get.dart';

class VehicleAcceptedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VehicleAcceptedController());
  }
}
