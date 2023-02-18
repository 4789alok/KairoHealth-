import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/family_list/controller/add_family_controller.dart';

class AddFamilyMemberBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(AddFamilyMemberController());
  }
}
