import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/Upload_Image/controller/upload_image_controller.dart';

class UploadImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepoImpl());
    Get.put(UploadImageController());
  }
}
