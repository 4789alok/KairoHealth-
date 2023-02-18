import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/kairo_doctors/Patient_List/controller/patient_list_controller.dart';

class DrPatientListBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(DrPatientListController());
  }
}
