import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/address_list/controller/address_list_controller.dart';

class AddressListBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(AddressListController());
  }
}
