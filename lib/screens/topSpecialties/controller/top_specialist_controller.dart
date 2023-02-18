import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class TopSpecialistCategoryController extends GetxController {
  late Repo _repo;
  RxBool isLoading = false.obs;
  var dataList = <SpcializationCategoryDetails>[].obs;

  TopSpecialistCategoryController() {
    _repo = Get.find<RepoImpl>();
    hitApi();
  }

  getSpecialistCategoryList() async {
    isLoading.toggle();
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
      isLoading.toggle();
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

  hitApi() {
    getSpecialistCategoryList();
  }
}
