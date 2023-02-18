import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/consult/controller/consult_controller.dart';
import 'package:kairohealth/screens/deshboard/controller/dashboard_controller.dart';
import 'package:kairohealth/screens/home/controller/home_controller.dart';
import 'package:kairohealth/screens/lab_test/controller/lab_test_controller.dart';
import 'package:kairohealth/screens/medicines/controller/medicine_controller.dart';

class DeshboardBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(RepoImpl());
    Get.lazyPut<DeshboardController>(() => DeshboardController());
    Get.lazyPut<ConsultController>(() => ConsultController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<MedicineController>(() => MedicineController());
    Get.lazyPut<LabTestController>(() => LabTestController());
  }
}
