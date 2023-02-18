import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class DrPrescriptionMedicineController extends GetxController {
  late TextEditingController medicineController, qtyController;
  late Repo _repo;
  RxBool isLoading = false.obs;
  var medicineName = ''.obs;
  var medicineId = ''.obs;
  var response = ''.obs;
  var qty = '';
  var dataList = <MedicineDetails>[].obs;

  DrPrescriptionMedicineController() {
    _repo = Get.find<RepoImpl>();
    hitApi();
  }

  @override
  void onInit() {
    super.onInit();
    medicineController = TextEditingController();
    qtyController = TextEditingController();
  }

  getPatientList() async {
    // isLoading.toggle();
    try {
      final result = await _repo.hitMedicineListApi(boxStroge.read('token'));

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
