import 'package:digilocker/core/app_export.dart';
import 'package:digilocker/presentation/product_detail_screen/models/product_detail_model.dart';

class ProductDetailController extends GetxController {
  Rx<ProductDetailModel> productDetailModelObj = ProductDetailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
