import 'package:digilocker/core/app_export.dart';
import 'package:digilocker/presentation/error_dialog/models/error_model.dart';

class ErrorController extends GetxController {
  Rx<ErrorModel> errorModelObj = ErrorModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
