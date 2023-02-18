import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';

class UploadImageController extends GetxController {
  late Repo _repo;
  String route = '';
  RxBool isLoading = false.obs;

  UploadImageController() {
    _repo = Get.find<RepoImpl>();
    route = Get.arguments[0]['route'];
  }

  hitUploadPrescriptionApi(File image) async {
    // var uploadDoc = await image.readAsBytes();
    // String s = String.fromCharCodes(uploadDoc);
    // print(s);
    isLoading.toggle();

    try {
      final result =
          await _repo.hitUploadPrescription(boxStroge.read('token'), image);

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

  hitUploadLabTestApi(File image) async {
    // var uploadDoc = await image.readAsBytes();
    // String s = String.fromCharCodes(uploadDoc);
    // print(s);
    isLoading.toggle();

    try {
      final result =
          await _repo.hitUploadLabTest(boxStroge.read('token'), image);

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

  hitApi(File image) {
    if (route == "prescription") {
      hitUploadPrescriptionApi(image);
    } else if (route == "lab") {
      hitUploadLabTestApi(image);
    } else {
      print('no route');
    }
  }
}
