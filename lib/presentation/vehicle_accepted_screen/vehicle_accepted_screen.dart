import 'controller/vehicle_accepted_controller.dart';
import 'package:digilocker/core/app_export.dart';
import 'package:digilocker/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class VehicleAcceptedScreen extends GetWidget<VehicleAcceptedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA70001,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  896,
                ),
                width: getHorizontalSize(
                  413,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: getVerticalSize(
                          510,
                        ),
                        width: getHorizontalSize(
                          413,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMain1233x413,
                              height: getVerticalSize(
                                233,
                              ),
                              width: getHorizontalSize(
                                413,
                              ),
                              alignment: Alignment.topCenter,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding: getPadding(
                                  left: 58,
                                  top: 118,
                                  right: 58,
                                  bottom: 118,
                                ),
                                decoration: AppDecoration.fillGray5099,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgGroup6872,
                                      height: getVerticalSize(
                                        240,
                                      ),
                                      width: getHorizontalSize(
                                        269,
                                      ),
                                      margin: getMargin(
                                        top: 33,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: getVerticalSize(
                          458,
                        ),
                        width: getHorizontalSize(
                          413,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMain1253x413,
                              height: getVerticalSize(
                                253,
                              ),
                              width: getHorizontalSize(
                                413,
                              ),
                              alignment: Alignment.bottomCenter,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding: getPadding(
                                  all: 24,
                                ),
                                decoration: AppDecoration.fillWhiteA7008c,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        227,
                                      ),
                                      child: Text(
                                        "msg_your_vehicle_has_been".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtKanitBlack28,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        362,
                                      ),
                                      margin: getMargin(
                                        top: 6,
                                      ),
                                      child: Text(
                                        "msg_the_documents_are".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtKanitBlack16,
                                      ),
                                    ),
                                    CustomButton(
                                      height: getVerticalSize(
                                        67,
                                      ),
                                      text: "msg_view_all_vehicles".tr,
                                      margin: getMargin(
                                        top: 132,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 20,
                                        bottom: 34,
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
