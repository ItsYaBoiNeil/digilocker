import 'controller/home_controller.dart';
import 'package:digilocker/core/app_export.dart';
import 'package:digilocker/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA70001,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: getPadding(bottom: 685),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgDigilockerlogonotext,
                                            height: getVerticalSize(59),
                                            width: getHorizontalSize(43)),
                                        Padding(
                                            padding: getPadding(top: 2),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocation,
                                                      height:
                                                          getVerticalSize(18),
                                                      width:
                                                          getHorizontalSize(15),
                                                      margin: getMargin(
                                                          bottom: 10)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 5, top: 2),
                                                      child: Text(
                                                          "lbl_bandra_mumbai"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtKanitBlack18))
                                                ])),
                                        CustomSearchView(
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.searchController,
                                            hintText: "lbl_search_vehicles".tr,
                                            margin: getMargin(
                                                left: 24, top: 13, right: 25),
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 15,
                                                    top: 13,
                                                    right: 7,
                                                    bottom: 13),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .gray90001),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgSearchGray90001)),
                                            prefixConstraints: BoxConstraints(
                                                maxHeight: getVerticalSize(51)),
                                            suffix: Padding(
                                                padding: EdgeInsets.only(
                                                    right:
                                                        getHorizontalSize(15)),
                                                child: IconButton(
                                                    onPressed: () {
                                                      controller
                                                          .searchController
                                                          .clear();
                                                    },
                                                    icon: Icon(Icons.clear,
                                                        color: Colors
                                                            .grey.shade600)))),
                                        Container(
                                            margin: getMargin(top: 585),
                                            padding: getPadding(
                                                left: 28,
                                                top: 16,
                                                right: 28,
                                                bottom: 16),
                                            decoration: AppDecoration
                                                .outlineIndigo507f
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 5,
                                                          top: 1,
                                                          bottom: 13),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroup8,
                                                                height:
                                                                    getVerticalSize(
                                                                        26),
                                                                width:
                                                                    getHorizontalSize(
                                                                        30),
                                                                alignment: Alignment
                                                                    .centerRight),
                                                            Align(
                                                                alignment: Alignment
                                                                    .center,
                                                                child: Text(
                                                                    "lbl_home"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtKanitBlack12))
                                                          ])),
                                                  Spacer(flex: 52),
                                                  GestureDetector(
                                                      onTap: () {
                                                        navigateToaddVehicle();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 3,
                                                              bottom: 13),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgSearch,
                                                                    height:
                                                                        getVerticalSize(
                                                                            18),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            28)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                5),
                                                                    child: Text(
                                                                        "lbl_add_vehicle"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtKanitBlack12Gray900))
                                                              ]))),
                                                  Spacer(flex: 47),
                                                  GestureDetector(
                                                      onTap: () {
                                                        navigatetoAccount();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 13),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgUser,
                                                                    height:
                                                                        getSize(
                                                                            24),
                                                                    width:
                                                                        getSize(
                                                                            24)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                3),
                                                                    child: Text(
                                                                        "lbl_account"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtKanitBlack12Gray900))
                                                              ])))
                                                ]))
                                      ]))))
                    ]))));
  }

  navigateToaddVehicle() {
    Get.offNamed(
      AppRoutes.productDetailScreen,
    );
  }

  navigatetoAccount() {
    Get.offNamed(
      AppRoutes.accountScreen,
    );
  }
}
