import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class DrPrescriptionTestController extends GetxController {
  late TextEditingController testController, qtyController;
  late Repo _repo;
  RxBool isLoading = false.obs;
  var testName = ''.obs;
  var testId = ''.obs;
  var response = ''.obs;
  var qty = '';
  var urin = false;
  var blood = false;
  var dataList = <TestListDetails>[].obs;

  DrPrescriptionTestController() {
    _repo = Get.find<RepoImpl>();
    hitApi();
  }

  @override
  void onInit() {
    super.onInit();
    testController = TextEditingController();
    qtyController = TextEditingController();
  }

  getPatientList() async {
    // isLoading.toggle();
    try {
      final result = await _repo.hitTestListApi(boxStroge.read('token'));

      if (result != null) {
        if (result.status == 1) {
          dataList.value = result.data;
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

  String? validateMedicine(String value) {
    if (value.isEmpty) {
      return "Please Select Medicine";
    }
    return null;
  }

  String? validateQty(String value) {
    if (value.isEmpty) {
      return "Please Enter qty";
    }
    return null;
  }

  hitApi() {
    isLoading.toggle();
    getPatientList();
    isLoading.toggle();
  }
}
