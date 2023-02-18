import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/SymptomsPage/controller/symptoms_controller.dart';

class SymptomsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(SymptomsController());
  }
}
