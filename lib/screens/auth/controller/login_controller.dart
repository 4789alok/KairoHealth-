import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/data/constant.dart';

class LoginController extends GetxController {
  late TextEditingController mobileController;
  var phone = '';
  RxBool autoValidate = false.obs;

  @override
  void onInit() {
    super.onInit();
    // email = argumentData[0]['mail'];
    mobileController = TextEditingController();
    // confirmPassController = TextEditingController();
    // emailController.text = email;
  }

  String? validatePhone(String value) {
    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return "Please Enter valid mobile no.";
    }
    return null;
  }

  late Repo _repo;
  var msg = ''.obs;
  var token = '';

  LoginController() {
    _repo = Get.find<RepoImpl>();
  }

  hitLoginApi(String phone) async {
    try {
      final result = await _repo.hitLoginApi(phone, token);
      if (result!.status == 1) {
        msg.value = result.message.toString();
        var role = result.data!.role.toString();
        print("role:- $role");
        boxStroge.write('isLogedIn', true);
        boxStroge.write('phone', phone);
        boxStroge.write('token', token);
        boxStroge.write('id', result.data!.id);
        boxStroge.write('name', result.data!.name);
        boxStroge.write('role', role);
        getRoute(result.data!.role.toString());
      } else if (result.status == 2) {
        Get.toNamed('/register', arguments: [
          {
            'phone': phone,
            'token': token,
          }
        ]);
        msg.value = result.message.toString();
        print(msg.value);
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  void getRoute(String role) {
    if (role == "6") {
      Get.offAllNamed('/deshboard');
    } else if (role == "4") {
      Get.offAllNamed('/doctorDashboard');
    }
    // else if (role == "Laboratory") {
    //   return "5";
    // } else if (role == "Patient") {
    //   return "6";
    // }
    else {
      Get.offAllNamed('/deshboard');
    }
  }
}
