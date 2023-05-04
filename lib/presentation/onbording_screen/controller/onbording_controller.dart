import 'package:digilocker/core/app_export.dart';
import 'package:digilocker/presentation/onbording_screen/models/onbording_model.dart';

class OnbordingController extends GetxController {
  Rx<OnbordingModel> onbordingModelObj = OnbordingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
