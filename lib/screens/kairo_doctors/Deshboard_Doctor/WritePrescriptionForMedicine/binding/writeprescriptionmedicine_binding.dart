import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/kairo_doctors/Deshboard_Doctor/WritePrescriptionForMedicine/controller/writeprescriptionmedicine_controller.dart';

class DrPrescriptionMedicineBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(DrPrescriptionMedicineController());
  }
}
