import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/core/repository/repo_impl.dart';
import 'package:kairohealth/models/index.dart';
import 'package:kairohealth/widgets/custom_text.dart';

class AddAddressController extends GetxController {
  late TextEditingController mobileController,
      stateController,
      cityController,
      nameController,
      landMarkController,
      addressController,
      pinController;
  var phone = '';
  var name = '';
  var address = '';
  var pinCode = '';
  var state = '';
  var city = '';
  var stateID = '';
  var landMark = '';
  var addressType = 'Home';
  var response = ''.obs;
  var route = '';
  var addressID = '';
  late Repo _repo;
  RxBool isLoading = false.obs;
  String token = '';

  AddAddressController() {
    _repo = Get.find<RepoImpl>();
    token = boxStroge.read('token').toString();
    route = Get.arguments[0]['route'];
    addressID = Get.arguments[0]['addressID'];
    isLoading.toggle();
    getStateList();
    if (route == "edit") {
      getAddressDetails(addressID);
    }
    isLoading.toggle();
  }

  @override
  void onInit() {
    super.onInit();
    // email = argumentData[0]['mail'];
    mobileController = TextEditingController();
    nameController = TextEditingController();
    addressController = TextEditingController();
    pinController = TextEditingController();
    landMarkController = TextEditingController();
    stateController = TextEditingController();
    cityController = TextEditingController();
    // confirmPassController = TextEditingController();
    // emailController.text = email;
  }

  var addressList = <AddressDetails>[].obs;
  var stateList = <StateDetails>[].obs;
  var cityList = <CityDetails>[].obs;

  getAddAddressResponse() async {
    isLoading.toggle();
    try {
      final result = await _repo.hitAddAddressApi(token, name, phone,
          addressType, address, landMark, city, state, pinCode);

      if (result != null) {
        if (result.status == 1) {
          // Get.offNamed('/addressPage');
          Get.back();
        } else if (result.status == 201) {
          print('201');
          dialog(Get.context!);
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
  // hitEditAddressApi() async {
  //   isLoading.toggle();
  //   try {
  //     final result = await _repo.(token, name, phone,
  //         addressType, address, landMark, city, state, pinCode);

  //     if (result != null) {
  //       if (result.status == 1) {
  //         // Get.offNamed('/addressPage');
  //         Get.back();
  //       } else if (result.status == 201) {
  //         print('201');
  //         dialog(Get.context!);
  //       } else {
  //         print('Something went wrong');
  //       }
  //     }
  //   } on Exception catch (e) {
  //     // TODO
  //   } finally {
  //     isLoading.toggle();
  //   }
  // }

  getAddressDetails(String addressID) async {
    isLoading.toggle();
    try {
      final result = await _repo.hitAddressDetailsApi(token, addressID);

      if (result != null) {
        if (result.status == 1) {
          // Get.offNamed('/addressPage');
          nameController.text = result.data.name;
          mobileController.text = result.data.phone;
          addressController.text = result.data.address;
          landMarkController.text = result.data.landmark;
          stateController.text = result.data.state;
          pinController.text = result.data.pincode;
          cityController.text = result.data.city;
          addressType = result.data.type;
        } else if (result.status == 201) {
          print('201');
          dialog(Get.context!);
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

  String? validatePhone(String value) {
    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return "Please Enter valid mobile no.";
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

  String? validateState(String value) {
    if (value.isEmpty) {
      return "Select State";
    }
    return null;
  }

  String? validateLandmark(String value) {
    if (value.isEmpty) {
      return "Please enter landmark";
    }
    return null;
  }

  String? validateCity(String value) {
    if (value.isEmpty) {
      return "Select City";
    }
    return null;
  }

  hitApi() {
    // getAddAddressResponse(box.read('id').toString());
    getAddAddressResponse();
  }

// We are not providing any services at your location right now. We will reach you soon.
  dialog(BuildContext context) {
    showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          title: CustomText(
              text: 'Message',
              style: GoogleFonts.oswald(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              )),
          content: CustomText(
            text:
                'We are not providing any services at $pinCode  pinCode right now. We will reach you soon.',
            style: GoogleFonts.sourceSansPro(
              // fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          actions: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  Get.back();
                  // Get.toNamed('/addressPage');
                  // Navigator.pop(context);
                },
                child: const Text('OK')),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(primary: Colors.red),
            //     onPressed: () {
            //       // Write code to delete item
            //     },
            //     child: const Text(
            //       'Delete',
            //     )),
          ],
        );
      }),
    );
  }

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
