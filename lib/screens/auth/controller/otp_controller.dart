import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';

class OtpController extends GetxController {
  late TextEditingController otpController;
  var otp = '';
  RxBool autoValidate = false.obs;
  RxString verificationCode = ''.obs;
  late Repo _repo;
  RxBool isLoading = false.obs;
  var userToken = '';

  OtpController() {
    _repo = Get.find<RepoImpl>();
  }

  @override
  void onInit() {
    super.onInit();
    // email = argumentData[0]['mail'];
    otpController = TextEditingController();
    // confirmPassController = TextEditingController();
    // emailController.text = email;
  }

  String? validatePhone(String value) {
    if (!RegExp(r'^[0-9]{6}$').hasMatch(value)) {
      return "Please Enter valid OTP.";
    }
    return null;
  }

  verifyPhone(String phone) async {
    isLoading.toggle();
    FirebaseAuth auth = FirebaseAuth.instance;
    await auth.verifyPhoneNumber(
        phoneNumber: '+91$phone',
        // phoneNumber: '+1$phone',
        // phoneNumber: '+919675703668',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((value) async {
            if (value.user != null) {
              print('user logged in');
              print('FirebaseAuth :Roy');
              hitLoginApi(phone);
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print('FirebaseAuthException :' + e.message!);
          isLoading.toggle();
        },
        codeSent: (String verificationId, int? resendToken) async {
          verificationCode.value = verificationId;
          print('FirebaseAuth codeSent:' + verificationCode.value);
          isLoading.toggle();
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          verificationCode.value = verificationId;
          print('FirebaseAuth codeAutoRetrievalTimeout:' +
              verificationCode.value);
          // isLoading.toggle();
        },
        timeout: const Duration(seconds: 120));
  }

  hitApi(String phone) {
    verifyPhone(phone);
  }

  hitLoginApi(String phone) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    var uid = auth.currentUser!.uid;
    print('UID: $uid');
    isLoading.toggle();
    // var token = await getToken();
    // print(token);
    try {
      final result = await _repo.hitLoginApi(phone, uid);
      if (result!.status == 1) {
        var role = result.data!.role.toString();
        print("role:- $role");
        boxStroge.write('isLogedIn', true);
        boxStroge.write('phone', phone);
        boxStroge.write('token', uid);
        boxStroge.write('id', result.data!.id);
        boxStroge.write('name', result.data!.name);
        boxStroge.write('role', role);
        getRoute(result.data!.role.toString());
      } else if (result.status == 2) {
        Get.toNamed('/register', arguments: [
          {
            'phone': phone,
            'token': uid,
          }
        ]);
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

  Future<String> getToken() async {
    var id = boxStroge.read('id');
    var deviceToken = '';
    await FirebaseMessaging.instance.getToken().then((token) {
      userToken = token!;
      deviceToken = token;
      return token;
    });
    return deviceToken;
  }
}
