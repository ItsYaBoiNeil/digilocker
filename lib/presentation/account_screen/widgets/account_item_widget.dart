import '../controller/account_controller.dart';
import '../models/account_item_model.dart';
import 'package:digilocker/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AccountItemWidget extends StatelessWidget {
  AccountItemWidget(this.accountItemModelObj);

  AccountItemModel accountItemModelObj;

  var controller = Get.find<AccountController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgTicket,
          height: getVerticalSize(
            15,
          ),
          width: getHorizontalSize(
            20,
          ),
          margin: getMargin(
            top: 2,
            bottom: 9,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 24,
          ),
          child: Obx(
            () => Text(
              accountItemModelObj.alldocumentsTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtKanitBlack18Gray900,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgBackarrowGray900,
          height: getVerticalSize(
            13,
          ),
          width: getHorizontalSize(
            8,
          ),
          margin: getMargin(
            top: 2,
            bottom: 11,
          ),
        ),
      ],
    );
  }
}
