import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/add_address/controller/add_address_controller.dart';

class AddAddressBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(RepoImpl());
    Get.put(AddAddressController());
  }
}
