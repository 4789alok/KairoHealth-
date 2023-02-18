import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/model/medicine_data.dart';
import 'package:kairohealth/core/model/test_data.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class PrescriptionReportController extends GetxController {
  late TextEditingController ageController,
      stateController,
      cityController,
      nameController,
      addressController,
      adviceController,
      genderController;
  var age = '';
  var name = '';
  var address = '';
  var gender = '';
  var state = '';
  var advice = '';
  var city = '';
  var stateID = '';
  var addressType = 'Home';
  var response = ''.obs;
  late Repo _repo;
  RxBool isLoading = false.obs;
  String id = '';
  String token = '';
  var patientID = '';
  // var pinCodeData = PinCodeDetailsData();
  var stateList = <StateDetails>[].obs;
  var cityList = <CityDetails>[].obs;
  var testData = <TestData>[].obs;
  var medicineData = <AddMedicineData>[].obs;

  PrescriptionReportController() {
    _repo = Get.find<RepoImpl>();
    // id = box.read('id').toString();
    token = boxStroge.read('token');
    name = Get.arguments[0]['name'];
    age = Get.arguments[0]['age'];
    gender = Get.arguments[0]['gender'];
    address = Get.arguments[0]['address'];
    city = Get.arguments[0]['city'];
    state = Get.arguments[0]['state'];
    advice = Get.arguments[0]['advice'];
    patientID = Get.arguments[0]['patientID'];
  }

  hitAddPrescription() async {
    isLoading.toggle();
    try {
      final result = await _repo.hitAddPrescriptionApi(
          token,
          boxStroge.read('id').toString(),
          '5',
          patientID,
          name,
          age,
          address,
          gender,
          advice,
          state,
          city,
          testData,
          medicineData);

      if (result != null) {
        if (result.status == 1) {
          Get.offAllNamed('/doctorDashboard');
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
}
