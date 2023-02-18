import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class PatientDetailsController extends GetxController {
  late Repo _repo;
  var userToken = '';
  var name = ''.obs;
  var patientID = ''.obs;
  var email = ''.obs;
  var image = ''.obs;
  var age = '';
  var address = '';
  var gender = '';
  var state = '';
  var advice = '';
  var city = '';
  RxBool isLoading = false.obs;
  var patientList = <PatientDetails>[].obs;
  var userData = UserDetails().obs;

  PatientDetailsController() {
    _repo = Get.find<RepoImpl>();
    userToken = Get.arguments[0]['userToken'];

    getProfileDetailsApi();
    // hitApi();
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

  getProfileDetailsApi() async {
    isLoading.toggle();
    try {
      final result = await _repo.hitUserDataApi(userToken);

      if (result != null) {
        if (result.status == 1) {
          // dataList.value = result.data;
          patientID.value = result.data.id!.toString();
          name.value = result.data.name!;
          image.value = result.data.photo!;
          email.value = result.data.email!;
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
