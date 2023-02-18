import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/lab_test/controller/lab_test_controller.dart';

class LabTestBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(LabTestController());
  }
}
