import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';

class EditProfileController extends GetxController {
  late Repo _repo;
  late TextEditingController nameController, emailController, addressController;

  var name = '';
  var email = '';
  var address = '';
  var userName = '';
  var userMobile = '';
  var uploadImage = ''.obs;
  late File? image;

  EditProfileController() {
    _repo = Get.find<RepoImpl>();
    getProfileDetails();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    addressController = TextEditingController();
    // nameController.text = box.read('name') == null ? '' : box.read('name');
    // emailController.text = box.read('email') == null ? '' : box.read('email');
  }

  UserDetails? userData = UserDetails();
  RxBool isLoading = false.obs;

  void getProfileDetails() async {
    isLoading.toggle();
    try {
      final result = await _repo.hitUserDataApi(boxStroge.read('token'));
      if (result != null) {
        if (result.status == 1) {
          userData = result.data;
          userName = result.data.name!;
          uploadImage.value =
              result.data.photo == null ? '' : result.data.photo.toString();
          userMobile = result.data.phone == null ? '' : result.data.phone!;
          nameController.text =
              result.data.name == null ? '' : result.data.name.toString();
          emailController.text =
              result.data.email == null ? '' : result.data.email.toString();
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

  void hitUpdateProfile(File image) async {
    isLoading.toggle();
    try {
      final result = await _repo.hitProfileUpdateApi(
          boxStroge.read('token'), name, email, image);

      if (result != null) {
        print(result);

        if (result.status == 1) {
          print("home data: ${result.status}");
          Get.back();
          // Get.back();
        } else {
          // print(result.msg);
        }
      } else {
        print('No data found');
      }
    } on Exception catch (e) {
      // TODO

    } finally {
      isLoading.toggle();
    }
  }

  String? validateName(String value) {
    if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)) {
      return "Please Enter valid pin code";
    }
    return null;
  }

  String? validateAddress(String value) {
    if (value.isEmpty) {
      return "Please Enter your address";
    }
    return null;
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  hitApi(File image) {
    hitUpdateProfile(image);
  }
}
