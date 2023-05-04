import 'controller/error_controller.dart';
import 'package:digilocker/core/app_export.dart';
import 'package:digilocker/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  ErrorDialog(this.controller);

  ErrorController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        364,
      ),
      padding: getPadding(
        left: 25,
        top: 19,
        right: 25,
        bottom: 19,
      ),
      decoration: AppDecoration.fillWhiteA70001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgClose,
            height: getSize(
              15,
            ),
            width: getSize(
              15,
            ),
            alignment: Alignment.centerLeft,
            margin: getMargin(
              top: 7,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgErrorremovebgpreview,
            height: getVerticalSize(
              203,
            ),
            width: getHorizontalSize(
              210,
            ),
            margin: getMargin(
              top: 44,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 45,
            ),
            child: Text(
              "msg_oops_request_failed".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtKanitBlack28,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 8,
            ),
            child: Text(
              "msg_something_went_tembly".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtKanitBlack16,
            ),
          ),
          CustomButton(
            height: getVerticalSize(
              67,
            ),
            text: "msg_please_try_again".tr,
            margin: getMargin(
              top: 57,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 20,
            ),
            child: Text(
              "lbl_back_to_home".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtKanitBlack18Gray900,
            ),
          ),
        ],
      ),
    );
  }
}
