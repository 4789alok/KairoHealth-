import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class DoctorPageController extends GetxController {
  late Repo _repo;
  var patientID = '';
  RxBool isLoading = false.obs;
  var patientList = <PatientDetails>[].obs;

  DoctorPageController() {
    _repo = Get.find<RepoImpl>();
    // hitApi();
    getProfileDetailsApi();
  }

  getProfileDetailsApi() async {
    isLoading.toggle();
    try {
      final result = await _repo.hitUserDataApi(boxStroge.read('token'));

      if (result != null) {
        if (result.status == 1) {
          // dataList.value = result.data;
          patientID = result.data.id!.toString();
          // mobile.value = result.data.phone!;
          // email.value = result.data.email!;
          // image.value = result.data.photo!;

        } else if (result.status == 201) {
          print('201');
        } else {
          print('Something went wrong');
        }
      }
    } on Exception catch (e) {
      // TODO
    } finally {
      isLoading.toggle();
    }
  }

  hitRequestApi(String docID, String patientID) async {
    // isLoading.toggle();
    try {
      final result = await _repo.hitCallRequestApi(
          boxStroge.read('token'), patientID, docID);

      if (result != null) {
        if (result.status == 1) {
          Get.offAllNamed('/deshboard');
        } else if (result.status == 201) {
          print('201');
        } else {
          print('Something went wrong');
        }
      }
    } on Exception catch (e) {
      // TODO
    } finally {
      // isLoading.toggle();
    }
  }
}
