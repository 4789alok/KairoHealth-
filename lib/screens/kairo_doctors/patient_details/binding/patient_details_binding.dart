import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/kairo_doctors/patient_details/controller/patient_details_controller.dart';

class PatientDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(PatientDetailsController());
  }
}
