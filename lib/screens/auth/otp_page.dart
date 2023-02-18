import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kairohealth/screens/auth/controller/otp_controller.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  final controller = Get.find<OtpController>();
  FocusNode mobileFieldFocusNode = FocusNode();
  final String phoneNo = Get.arguments[0]['phone'];
  var pinCode = '';
  final FocusNode _pinPutFocusNode = FocusNode();
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  final focusedPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    ),
  );

  final submittedPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Color.fromRGBO(234, 239, 243, 1),
      border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  final followingPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    ),
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('phoneNo: $phoneNo');
    controller.hitApi(phoneNo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              // shape: BoxShape.circle,
              color: Colors.white,
              // image: DecorationImage(
              //     image: AssetImage('./assets/images/login_bg.jpg'),
              //     fit: BoxFit.cover),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          // BackdropFilter(
          //   filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          //   child: Container(
          //     width: MediaQuery.of(context).size.width,
          //     height: MediaQuery.of(context).size.height,
          //     decoration:
          //         BoxDecoration(color: Colors.grey.shade200.withOpacity(0.1)),
          //   ),
          // ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top,
              child: Column(
                children: [
                  const SizedBox(
                    height: 0,
                  ),
                  header(),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Pinput(
                      length: 6,
                      focusNode: _pinPutFocusNode,
                      controller: controller.otpController,
                      submittedPinTheme: submittedPinTheme,
                      focusedPinTheme: focusedPinTheme,
                      followingPinTheme: followingPinTheme,
                      pinAnimationType: PinAnimationType.fade,
                      onCompleted: (pin) {
                        pinCode = pin;
                      },
                    ),
                    // Form(
                    //   key: loginFormKey,
                    //   autovalidateMode: AutovalidateMode.onUserInteraction,
                    //   onChanged: () {
                    //     final isValid = loginFormKey.currentState!.validate();
                    //     if (isValid) {
                    //       controller.autoValidate.value = true;
                    //       final keybordStatus =
                    //           MediaQuery.of(context).viewInsets.bottom;
                    //       if (keybordStatus != 0) {
                    //         FocusScope.of(context).requestFocus(FocusNode());
                    //       }
                    //       print(keybordStatus);
                    //     } else {
                    //       controller.autoValidate.value = false;
                    //     }
                    //   },
                    //   child: Column(
                    //     children: [
                    //       const SizedBox(height: 10),
                    //       TextFormField(
                    //         focusNode: mobileFieldFocusNode,
                    //         style: const TextStyle(color: Colors.black),
                    //         decoration: InputDecoration(
                    //           filled: true,
                    //           fillColor: Colors.white,
                    //           focusedBorder: const OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(10.0)),
                    //               borderSide: BorderSide(color: Colors.amber)),
                    //           border: const OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(10.0))),
                    //           errorBorder: const OutlineInputBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(10.0)),
                    //               borderSide:
                    //                   BorderSide(color: Colors.red, width: 1)),
                    //           labelStyle: const TextStyle(color: Colors.black),
                    //           hintText: "Enter your otp",
                    //           hintStyle: TextStyle(color: Colors.grey.shade700),
                    //           // border: InputBorder.none,
                    //           // focusedBorder: const OutlineInputBorder(
                    //           //   borderSide:
                    //           //       BorderSide(color: Colors.amber, width: 2.0),
                    //           // ),
                    //           // enabledBorder: const OutlineInputBorder(
                    //           //   borderSide:
                    //           //       BorderSide(color: Colors.black, width: 1.0),
                    //           // ),
                    //         ),
                    //         keyboardType: TextInputType.phone,
                    //         controller: controller.otpController,
                    //         onSaved: (value) {
                    //           controller.otp = value!;
                    //         },
                    //         validator: (value) {
                    //           return controller.validatePhone(value!);
                    //         },
                    //       ),
                    //       const SizedBox(
                    //         height: 30,
                    //       ),
                    //       buttonField()
                    //     ],
                    //   ),
                    // ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () => controller.hitApi(phoneNo),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Text(
                            'RESEND OTP',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Obx(() {
                    return controller.isLoading.isTrue
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(
                                color: Theme.of(context).primaryColor,
                              )
                            ],
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Theme.of(context).primaryColor,
                                  ),
                                  onPressed: () async {
                                    try {
                                      await FirebaseAuth.instance
                                          .signInWithCredential(
                                              PhoneAuthProvider.credential(
                                                  verificationId: controller
                                                      .verificationCode.value,
                                                  smsCode: pinCode))
                                          .then((value) async {
                                        if (value.user != null) {
                                          controller.hitLoginApi(phoneNo);
                                        }
                                      });
                                    } catch (e) {
                                      FocusScope.of(context).unfocus();
                                      Get.showSnackbar(const GetSnackBar(
                                        title: 'Message',
                                        message: 'invalid OTP',
                                      ));
                                      print('Invalid otp');
                                    }
                                  },
                                  child: const Text('SUBMIT'),
                                ),
                              ],
                            ),
                          );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget buttonField() {
  //   return Obx(
  //     () {
  //       return GestureDetector(
  //         onTap: () async {
  //           if (controller.autoValidate.isTrue) {
  //             // Get.offNamed('/home');
  //             try {
  //               await FirebaseAuth.instance
  //                   .signInWithCredential(PhoneAuthProvider.credential(
  //                       verificationId: controller.verificationCode.value,
  //                       smsCode: controller.otpController.text))
  //                   .then((value) {
  //                 if (value.user != null) {
  //                   print('user logged in');
  //                   print('FirebaseAuth :verificationCompleted');
  //                   controller.hitLoginApi(phoneNo);
  //                 }
  //               });
  //             } on Exception catch (e) {
  //               FocusScope.of(context).unfocus();
  //               _scaffoldkey.currentState!
  //                   .showSnackBar(SnackBar(content: Text('invalid OTP')));
  //             }
  //           } else {
  //             FocusScope.of(context).requestFocus(mobileFieldFocusNode);
  //             print('Do nothing');
  //           }
  //         },
  //         child: Container(
  //           height: 50,
  //           decoration: BoxDecoration(
  //             color: controller.autoValidate.isTrue
  //                 ? Theme.of(context).primaryColor
  //                 : Colors.grey,
  //             borderRadius: BorderRadius.circular(10),
  //           ),
  //           child: const Center(
  //             child: Text(
  //               "Verify",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 15,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: const AssetImage('images/peakpx.jpg'),
            width: MediaQuery.of(context).size.width / 2,
          ),
          Center(
            child: Text(
                // "Login",style:GoogleFonts.expletusSans(fontStyle: FontStyle.normal,color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold,),
                "Sign In",
                style: GoogleFonts.oswald(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              "Welcome to the laham",
              style: GoogleFonts.sourceSansPro(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
