import 'controller/onbording_controller.dart';
import 'package:digilocker/core/app_export.dart';
import 'package:digilocker/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnbordingScreen extends GetWidget<OnbordingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.gray50,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgOnbording),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Spacer(),
                          Container(
                              height: getVerticalSize(519),
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            padding: getPadding(
                                                left: 30,
                                                top: 90,
                                                right: 30,
                                                bottom: 90),
                                            decoration: AppDecoration
                                                .gradientGray90000Gray60001,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      height:
                                                          getVerticalSize(141),
                                                      width: getHorizontalSize(
                                                          342),
                                                      margin:
                                                          getMargin(top: 16),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Text(
                                                                    "msg_your_one_stop_solution"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtKanitBlack16Gray50b2)),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: Container(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            333),
                                                                    child: Text(
                                                                        "msg_welcome_to_digilocker"
                                                                            .tr,
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtKanitBlack48)))
                                                          ])),
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(67),
                                                      text:
                                                          "lbl_get_started".tr,
                                                      margin:
                                                          getMargin(top: 34),
                                                      onTap: () {
                                                        onTapGetstarted();
                                                      })
                                                ]))),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgDigilockerlogonotext,
                                        height: getVerticalSize(188),
                                        width: getHorizontalSize(117),
                                        alignment: Alignment.topLeft,
                                        margin: getMargin(left: 139))
                                  ]))
                        ])))));
  }

  onTapGetstarted() {
    Get.offNamed(
      AppRoutes.signUpScreen,
    );
  }
}
