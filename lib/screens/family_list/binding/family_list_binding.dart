import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/family_list/controller/family_list_controller.dart';

class FamilyListBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(FamilyListController());
  }
}
