import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/kairo_doctors/add_prescription/controller/prescription_report_controller.dart';

class PrescriptionReportBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(RepoImpl());
    Get.put(PrescriptionReportController());
  }
}
