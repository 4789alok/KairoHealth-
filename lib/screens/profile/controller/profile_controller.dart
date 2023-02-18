import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class ProfilePageController extends GetxController {
  late Repo _repo;
  RxBool isLoading = false.obs;
  var dataList = UserDetails().obs;
  var name = ''.obs;
  var mobile = ''.obs;
  var email = ''.obs;
  var image = ''.obs;

  ProfilePageController() {
    _repo = Get.find<RepoImpl>();
    hitApi();
  }

  getProfileDetailsApi() async {
    // isLoading.toggle();
    try {
      final result = await _repo.hitUserDataApi(boxStroge.read('token'));

      if (result != null) {
        if (result.status == 1) {
          dataList.value = result.data;
          name.value = result.data.name!;
          mobile.value = result.data.phone!;
          email.value = result.data.email!;
          image.value = result.data.photo!;
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
    getProfileDetailsApi();
    isLoading.toggle();
  }
}
