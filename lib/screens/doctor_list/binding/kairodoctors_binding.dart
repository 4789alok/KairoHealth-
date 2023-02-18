import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/doctor_list/controller/kairodoctors_controller.dart';

class DoctorPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(DoctorPageController());
  }
}
