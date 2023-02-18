import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/kairo_doctors/Deshboard_Doctor/controller/dr_dashboard_controller.dart';
import 'package:kairohealth/screens/kairo_doctors/Patient_List/controller/patient_list_controller.dart';
import 'package:kairohealth/screens/kairo_doctors/home/controller/home_controller.dart';

class DrDeshboardBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(RepoImpl());
    Get.lazyPut<DrDeshboardController>(() => DrDeshboardController());
    Get.lazyPut<DrPatientListController>(() => DrPatientListController());
    Get.lazyPut<DrHomeController>(() => DrHomeController());
  }
}
