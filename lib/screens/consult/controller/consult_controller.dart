import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class ConsultController extends GetxController {
  late Repo _repo;
  RxBool isLoading = false.obs;
  var dataList = <SpcializationCategoryDetails>[].obs;
  var diseaseList = <DiseaseListDetails>[].obs;

  ConsultController() {
    _repo = Get.find<RepoImpl>();
    hitApi();
  }

  getSpecialistCategoryList() async {
    // isLoading.toggle();
    try {
      final result =
          await _repo.hitSpcialistCategoryApi(boxStroge.read('token'));

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

  getDiseaseList() async {
    // isLoading.toggle();
    try {
      final result = await _repo.hitDiseaseListApi(boxStroge.read('token'));

      if (result != null) {
        if (result.status == 1) {
          diseaseList.value = result.data;
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

  getDoctorListList(String specializationID) async {
    isLoading.toggle();
    try {
      final result = await _repo.hitSpecializationWiseDoctorListApi(
          boxStroge.read('token'), specializationID);

      if (result != null) {
        if (result.status == 1) {
          Get.toNamed('/doctorListPage', arguments: [
            {
              'data': result.data,
            }
          ]);
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

  getDoctorListBySymptomsList(String symptomsID) async {
    isLoading.toggle();
    try {
      final result = await _repo.hitDiseaseWiseDoctorListApi(
          boxStroge.read('token'), symptomsID);

      if (result != null) {
        if (result.status == 1) {
          Get.toNamed('/doctorListPage', arguments: [
            {
              'data': result.data,
            }
          ]);
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

  hitApi() {
    isLoading.toggle();
    getSpecialistCategoryList();
    getDiseaseList();
    isLoading.toggle();
  }
}
