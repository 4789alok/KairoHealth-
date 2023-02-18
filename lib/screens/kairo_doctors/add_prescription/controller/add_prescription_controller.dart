import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';
import 'package:kairohealth/widgets/custom_text.dart';

class AddPrescriptionController extends GetxController {
  late TextEditingController ageController,
      stateController,
      cityController,
      nameController,
      addressController,
      adviceController,
      genderController;
  var age = '';
  var name = '';
  var address = '';
  var gender = '';
  var state = '';
  var advice = '';
  var city = '';
  var stateID = '';
  var cityID = '';
  var patientID = '';
  var addressType = 'Home';
  var response = ''.obs;
  late Repo _repo;
  RxBool isLoading = false.obs;
  String id = '';
  String token = '';
  // var pinCodeData = PinCodeDetailsData();
  var stateList = <StateDetails>[].obs;
  var cityList = <CityDetails>[].obs;

  AddPrescriptionController() {
    _repo = Get.find<RepoImpl>();
    // id = box.read('id').toString();
    token = boxStroge.read('token');
    patientID = Get.arguments[0]['patientID'];
    isLoading.toggle();
    getStateList();
    isLoading.toggle();
  }

  @override
  void onInit() {
    super.onInit();
    // email = argumentData[0]['mail'];
    ageController = TextEditingController();
    nameController = TextEditingController();
    addressController = TextEditingController();
    genderController = TextEditingController();
    stateController = TextEditingController();
    cityController = TextEditingController();
    adviceController = TextEditingController();
    nameController.text = Get.arguments[0]['name'];

    // confirmPassController = TextEditingController();
    // emailController.text = email;
    // _getCurrentPosition();
    // print(_currentPosition?.latitude);
    // if (_currentPosition != null) {
    //   _getAddressFromLatLng(_currentPosition!);
    // }
  }

  getStateList() async {
    isLoading.toggle();
    try {
      final result = await _repo.hitSatesApi(token);

      if (result != null) {
        if (result.status == 1) {
          stateList.value = result.data;
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

  getCityList() async {
    isLoading.toggle();
    try {
      final result = await _repo.hitStateWiseCityApi(token, stateID);

      if (result != null) {
        if (result.status == 1) {
          cityList.value = result.data;
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

  String? validateAge(String value) {
    if (value.isEmpty) {
      return "Please Enter valid age";
    }
    return null;
  }

  String? validatePinCode(String value) {
    if (!RegExp(r'^[0-9]{6}$').hasMatch(value)) {
      return "Please Enter valid pin code";
    }
    return null;
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

  String? validateGender(String value) {
    if (value.isEmpty) {
      return "Please Enter gender";
    }
    return null;
  }

  String? validateState(String value) {
    if (value.isEmpty) {
      return "Select State";
    }
    return null;
  }

  String? validateCity(String value) {
    if (value.isEmpty) {
      return "Select City";
    }
    return null;
  }

  String? validateAdvice(String value) {
    if (value.isEmpty) {
      return "Enter your advice";
    }
    return null;
  }

  hitApi() {
    Get.toNamed('/drPrescriptionReport', arguments: [
      {
        'name': name,
        'age': age,
        'address': address,
        'gender': gender,
        'state': state,
        'city': city,
        'advice': advice,
        'patientID': patientID,
      }
    ]);
  }

// We are not providing any services at your location right now. We will reach you soon.
  // dialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: ((context) {
  //       return AlertDialog(
  //         title: CustomText(
  //             text: 'Message',
  //             style: GoogleFonts.oswald(
  //               fontSize: 22,
  //               fontWeight: FontWeight.w700,
  //             )),
  //         content: CustomText(
  //           text:
  //               'We are not providing any services at $pinCode  pinCode right now. We will reach you soon.',
  //           style: GoogleFonts.sourceSansPro(
  //             // fontSize: 16,
  //             fontWeight: FontWeight.w500,
  //             color: Colors.grey,
  //           ),
  //         ),
  //         actions: [
  //           ElevatedButton(
  //               style: ElevatedButton.styleFrom(primary: Colors.green),
  //               onPressed: () {
  //                 Get.back();
  //                 // Get.toNamed('/addressPage');
  //                 // Navigator.pop(context);
  //               },
  //               child: const Text('OK')),
  //           // ElevatedButton(
  //           //     style: ElevatedButton.styleFrom(primary: Colors.red),
  //           //     onPressed: () {
  //           //       // Write code to delete item
  //           //     },
  //           //     child: const Text(
  //           //       'Delete',
  //           //     )),
  //         ],
  //       );
  //     }),
  //   );
  // }

  // dialog() {
  //   Get.defaultDialog(
  //     title:
  //         'We are not providing any services at your location right now. We will reach you soon.',
  //     titleStyle: const TextStyle(fontWeight: FontWeight.w500),
  //     content: const SizedBox(
  //       height: 6,
  //     ),
  //     radius: 10.0,
  //     barrierDismissible: false,
  //     confirm: ElevatedButton(
  //       onPressed: () {
  //         Get.back();
  //       },
  //       style: ElevatedButton.styleFrom(
  //           primary: Colors.teal,
  //           padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
  //           textStyle:
  //               const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
  //       child: const Text(
  //         'ok',
  //         style: TextStyle(
  //             color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
  //       ),
  //     ),
  //     // cancel: ElevatedButton(
  //     //   onPressed: () {
  //     //     Get.back();
  //     //     count.value = 1;
  //     //     Get.offNamed('/askQuery');
  //     //   },
  //     //   style: ElevatedButton.styleFrom(
  //     //       primary: Colors.red,
  //     //       padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
  //     //       textStyle:
  //     //           const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
  //     //   child: const Text(
  //     //     'No',
  //     //     style: TextStyle(
  //     //         color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
  //     //   ),
  //     // ),
  //     // // onConfirm: () => print('yes'),
  //     // // onCancel: () => print('yes'),
  //     // cancelTextColor: Colors.black,
  //   );
  // }
}
