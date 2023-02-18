import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/kairo_doctors/home/controller/home_controller.dart';

class DrHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(DrHomeController());
  }
}
