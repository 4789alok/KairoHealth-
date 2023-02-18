import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/auth/controller/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(RegisterController());
  }
}
