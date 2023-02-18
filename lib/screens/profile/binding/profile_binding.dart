import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/profile/controller/profile_controller.dart';

class ProfilePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(ProfilePageController());
  }
}
