import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/prescription_list/controller/prescription_list_controller.dart';

class PrescriptionListBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(PrescriptionListController());
  }
}
