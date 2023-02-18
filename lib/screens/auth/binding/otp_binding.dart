import 'package:get/get.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/screens/auth/controller/otp_controller.dart';

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(RepoImpl());
    Get.put(OtpController());
  }
}
