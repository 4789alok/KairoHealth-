import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/topSpecialties/controller/top_specialist_controller.dart';

class TopSpecialistCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(TopSpecialistCategoryController());
  }
}
