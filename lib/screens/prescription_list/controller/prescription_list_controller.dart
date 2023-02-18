import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class PrescriptionListController extends GetxController {
  late Repo _repo;
  RxBool isLoading = false.obs;
  // var prescriptionList = <Pre>[].obs;
  var dataList = <PrescriptionListDetails>[].obs;

  PrescriptionListController() {
    _repo = Get.find<RepoImpl>();
    hitApi();
  }

  getPrescriptionList() async {
    // isLoading.toggle();
    try {
      final result =
          await _repo.hitPrescriptionListApi(boxStroge.read('token'));

      if (result != null) {
        if (result.status == 1) {
          dataList.value = result.data;
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
    getPrescriptionList();
    isLoading.toggle();
  }
}
