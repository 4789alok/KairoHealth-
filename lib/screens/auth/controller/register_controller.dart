import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/data/constant.dart';

class RegisterController extends GetxController {
  late TextEditingController mobileController,
      nameController,
      emailController,
      roleController;

  late Repo _repo;
  var msg = ''.obs;
  var token = '';
  var mobile = '';
  var name = '';
  var email = '';
  var role = '';

  RegisterController() {
    mobileController = TextEditingController();
    nameController = TextEditingController();
    emailController = TextEditingController();
    roleController = TextEditingController();
    mobile = Get.arguments[0]['phone'];
    token = Get.arguments[0]['token'];
    mobileController.text = mobile;

    _repo = Get.find<RepoImpl>();
  }

  hitRegisterApi() async {
    print(token);
    print(mobile);
    print(name);
    print(email);
    print(role);
    var noRole = getRole(role);
    try {
      final result =
          await _repo.hitRegisterApi(mobile, token, email, noRole, name);
      if (result!.status == 1) {
        msg.value = result.message.toString();
        boxStroge.write('isLogedIn', true);
        boxStroge.write('phone', mobile);
        boxStroge.write('token', token);
        boxStroge.write('id', result.data!.id);
        boxStroge.write('name', result.data!.name);
        boxStroge.write('role', result.data!.role.toString());
        getRoute(result.data!.role.toString());
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  String getRole(String role) {
    if (role == "Pharmacy") {
      return "3";
    } else if (role == "Doctor") {
      return "4";
    } else if (role == "Laboratory") {
      return "5";
    } else if (role == "Patient") {
      return "6";
    } else {
      return "";
    }
  }

  void getRoute(String role) {
    if (role == "6") {
      Get.offAllNamed('/deshboard');
    } else if (role == "4") {
      Get.offAllNamed('/doctorDashboard');
    } else if (role == "3") {
      Get.offAllNamed('/phDashboard');
    }
    // else if (role == "Patient") {
    //   return "6";
    // }
    else {
      Get.offAllNamed('/deshboard');
    }
  }
}
