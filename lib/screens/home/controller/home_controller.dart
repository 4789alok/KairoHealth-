import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class HomeController extends GetxController {
  late Repo _repo;
  RxBool isLoading = false.obs;
  var bannerList = <BannerDetails>[].obs;
  var doctorList = <DoctorDetails>[].obs;
  var diseaseList = <DiseaseListDetails>[].obs;

  HomeController() {
    _repo = Get.find<RepoImpl>();
    hitApi();
  }

  getBannerList() async {
    // isLoading.toggle();
    try {
      final result = await _repo.getBannerApi(boxStroge.read('token'), "1");

      if (result != null) {
        if (result.status == 1) {
          bannerList.value = result.data!;
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

  getDoctorList() async {
    // isLoading.toggle();
    try {
      final result = await _repo.hitAlldoctorlistApi(boxStroge.read('token'));

      if (result != null) {
        if (result.status == 1) {
          doctorList.value = result.data;
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

  hitApi() {
    isLoading.toggle();
    getBannerList();
    getDoctorList();
    getDiseaseList();
    isLoading.toggle();
  }
}
