import 'package:get/get.dart';
import 'account_item_model.dart';

class AccountModel {
  Rx<List<AccountItemModel>> accountItemList =
      Rx(List.generate(4, (index) => AccountItemModel()));
}
