import 'package:digilocker/core/app_export.dart';
import 'package:digilocker/presentation/log_in_screen/models/log_in_model.dart';

class LogInController extends GetxController {
  Rx<LogInModel> logInModelObj = LogInModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
