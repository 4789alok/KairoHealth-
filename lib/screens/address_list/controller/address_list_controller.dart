import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class AddressListController extends GetxController {
  late Repo _repo;
  RxBool isLoading = false.obs;
  var addressList = <AddressDetails>[].obs;

  AddressListController() {
    _repo = Get.find<RepoImpl>();
    hitApi();
  }

  getAddressList() async {
    // isLoading.toggle();
    try {
      final result = await _repo.hitAddressListApi(boxStroge.read('token'));

      if (result != null) {
        if (result.status == 1) {
          addressList.value = result.data;
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

  hitRemoveAddressApi(String addressID) async {
    // isLoading.toggle();
    try {
      final result =
          await _repo.hitRemoveAddressApi(boxStroge.read('token'), addressID);

      if (result != null) {
        if (result.status == 1) {
          hitApi();
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
    getAddressList();
    isLoading.toggle();
  }
}
