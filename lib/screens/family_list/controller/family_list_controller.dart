import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class FamilyListController extends GetxController {
  late Repo _repo;
  RxBool isLoading = false.obs;
  var dataList = <FamilyDetails>[].obs;

  FamilyListController() {
    _repo = Get.find<RepoImpl>();
    hitApi();
  }

  getFamilyList() async {
    // isLoading.toggle();
    try {
      final result = await _repo.hitFamilyListApi(boxStroge.read('token'));

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

  hitApi() {
    isLoading.toggle();
    getFamilyList();
    isLoading.toggle();
  }
}
