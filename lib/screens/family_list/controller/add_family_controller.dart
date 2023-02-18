import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class AddFamilyMemberController extends GetxController {
  late TextEditingController emailController,
      nameController,
      mobileController,
      genderController,
      relationController;

  var mail = '';
  var name = '';
  var relation = '';
  var phone = '';
  var gender = ''.obs;
  late Repo _repo;
  RxBool isLoading = false.obs;

  AddFamilyMemberController() {
    _repo = Get.find<RepoImpl>();
    // hitApi();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emailController = TextEditingController();
    nameController = TextEditingController();
    genderController = TextEditingController();
    mobileController = TextEditingController();
    relationController = TextEditingController();
  }

  hitAddMemberApi() async {
    isLoading.toggle();
    try {
      final result = await _repo.hitAddFamilyApi(
          boxStroge.read('token'), name, mail, phone, relation, gender.value);

      if (result != null) {
        if (result.status == 1) {
          Get.back();
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

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value) && value.isNotEmpty) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validateName(String value) {
    if (value.isEmpty) {
      return "Please Enter name";
    } else if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)) {
      return "Please Enter valid name";
    }
    return null;
  }

  String? validateRelationShip(String value) {
    if (value.isEmpty) {
      return "Please Select Relation";
    }
    return null;
  }

  String? validateGender(String value) {
    if (value.isEmpty) {
      return "Please Select gender";
    }
    return null;
  }

  String? validatePhone(String value) {
    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return "Please Enter valid mobile no.";
    }
    return null;
  }

  // hitApi() {
  //   isLoading.toggle();
  //   hitAddMemberApi();
  //   isLoading.toggle();
  // }
}
