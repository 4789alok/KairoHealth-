import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/consult/controller/consult_controller.dart';

class ConsultBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(ConsultController());
  }
}
