import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class DrHomeController extends GetxController {
  late Repo _repo;
  RxBool isLoading = false.obs;
  var patientList = <PatientDetails>[].obs;
  var userData = UserDetails().obs;

  DrHomeController() {
    _repo = Get.find<RepoImpl>();
    hitApi();
  }

  getPatientList() async {
    // isLoading.toggle();
    try {
      final result =
          await _repo.hitDrWisePatientListApi(boxStroge.read('token'));

      if (result != null) {
        if (result.status == 1) {
          patientList.value = result.data;
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

  getDoctorDetails() async {
    // isLoading.toggle();
    try {
      final result = await _repo.hitUserDataApi(boxStroge.read('token'));

      if (result != null) {
        if (result.status == 1) {
          userData.value = result.data;
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

  hitApi() {
    isLoading.toggle();
    getPatientList();
    getDoctorDetails();
    isLoading.toggle();
  }
}
