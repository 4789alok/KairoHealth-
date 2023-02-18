import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/auth/controller/login_controller.dart';

import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final controller = Get.find<LoginController>();
  FocusNode mobileFieldFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // const BackgroundVideo(),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // const SizedBox(
                  //   height: 200,
                  // ),
                  header(),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        // color: Colors.black.withOpacity(0.2),
                        // color: Colors.amber,
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Form(
                      key: loginFormKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: () {
                        final isValid = loginFormKey.currentState!.validate();
                        if (isValid) {
                          controller.autoValidate.value = true;
                          final keybordStatus =
                              MediaQuery.of(context).viewInsets.bottom;
                          if (keybordStatus != 0) {
                            FocusScope.of(context).requestFocus(FocusNode());
                          }
                          print(keybordStatus);
                        } else {
                          controller.autoValidate.value = false;
                        }
                      },
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          TextFormField(
                            focusNode: mobileFieldFocusNode,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.amber)),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              errorBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 1)),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintText: "Enter your mobile No.",
                              hintStyle: TextStyle(color: Colors.grey.shade700),
                              // focusedBorder: const OutlineInputBorder(
                              //   borderSide:
                              //       BorderSide(color: Colors.amber, width: 2.0),
                              // ),
                              // enabledBorder: const OutlineInputBorder(
                              //   borderSide:
                              //       BorderSide(color: Colors.black, width: 1.0),
                              // ),
                            ),
                            keyboardType: TextInputType.phone,
                            controller: controller.mobileController,
                            onSaved: (value) {
                              controller.phone = value!;
                              if (kDebugMode) {
                                print('phoneNo: ${value}');
                              }
                            },
                            validator: (value) {
                              return controller.validatePhone(value!);
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          buttonField()
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonField() {
    return Obx(
      () {
        return GestureDetector(
          onTap: () {
            if (controller.autoValidate.isTrue) {
              print('phoneNo: ${controller.mobileController.text}');
              Get.offNamed('/otpVerify', arguments: [
                {
                  'phone': controller.mobileController.text,
                }
              ]);
            } else {
              FocusScope.of(context).requestFocus(mobileFieldFocusNode);
              print('Do nothing');
            }
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: controller.autoValidate.isTrue
                  ? Theme.of(context).primaryColor
                  : Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
    // Obx(() {
    //   return controller.isLoading.isTrue
    //       ? Row(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: const [
    //             CircularProgressIndicator(
    //               color: Colors.amber,
    //             )
    //           ],
    //         )
    //       : GestureDetector(
    //           onTap: () {
    //             // Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
    //             final isValid = loginFormKey.currentState!.validate();
    //             if (!isValid) {
    //               return;
    //             }
    //             loginFormKey.currentState!.save();
    //             controller.checkLogin();
    //             // obx() {
    //             //   if (controller.userData != null) {

    //             //     Get.toNamed('/home');
    //             //   }
    //             // }
    //           },
    //           child: Container(
    //             height: 50,
    //             decoration: BoxDecoration(
    //               color: Theme.of(context).accentColor,
    //               borderRadius: BorderRadius.circular(10),
    //             ),
    //             child: const Center(
    //               child: Text(
    //                 "Sign In",
    //                 style: TextStyle(
    //                   color: Colors.black,
    //                   fontSize: 15,
    //                   fontWeight: FontWeight.bold,
    //                 ),
    //               ),
    //             ),
    //           ),
    //         );
    // });
  }

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
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              "Welcome to the KairoHealth",
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


  // void loginWithPhone() async {
  //   auth.verifyPhoneNumber(
  //     phoneNumber: "+91" + phoneController.text,
  //     verificationCompleted: (PhoneAuthCredential credential) async {
  //       await auth.signInWithCredential(credential).then((value) {
  //         print("You are logged in successfully");
  //       });
  //     },
  //     verificationFailed: (FirebaseAuthException e) {
  //       print(e.message);
  //     },
  //     codeSent: (String verificationId, int? resendToken) {
  //       otpVisibility = true;
  //       verificationID = verificationId;
  //       setState(() {});
  //     },
  //     codeAutoRetrievalTimeout: (String verificationId) {},
  //   );
  // }

  // void verifyOTP() async {
  //   PhoneAuthCredential credential = PhoneAuthProvider.credential(
  //       verificationId: verificationID, smsCode: otpController.text);

  //   await auth.signInWithCredential(credential).then(
  //     (value) {
  //       setState(() {
  //         user = FirebaseAuth.instance.currentUser;
  //         controller.token = user!.uid;
  //       });
  //     },
  //   ).whenComplete(
  //     () {
  //       if (user != null) {
  //         Fluttertoast.showToast(
  //           msg: "You are logged in successfully",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.BOTTOM,
  //           timeInSecForIosWeb: 1,
  //           backgroundColor: Colors.red,
  //           textColor: Colors.white,
  //           fontSize: 16.0,
  //         );
  //         controller.hitLoginApi(phoneController.text);
  //         // Get.to(const DeshboardPage());
  //         // Navigator.pushReplacement(
  //         //   context,
  //         //   MaterialPageRoute(
  //         //     builder: (context) => const DeshboardPage(),
  //         //   ),
  //         // );
  //       } else {
  //         Fluttertoast.showToast(
  //           msg: "your login is failed",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.BOTTOM,
  //           timeInSecForIosWeb: 1,
  //           backgroundColor: Colors.red,
  //           textColor: Colors.white,
  //           fontSize: 16.0,
  //         );
  //       }
  //     },
  //   );
  // }


// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:kairohealth/screens/auth/controller/login_controller.dart';
// import 'package:get/get.dart';
// import 'package:kairohealth/screens/deshboard/deshboard.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   TextEditingController phoneController = TextEditingController();
//   TextEditingController otpController = TextEditingController();

//   FirebaseAuth auth = FirebaseAuth.instance;
//   bool otpVisibility = false;
//   User? user;
//   String verificationID = "";
//   final controller = Get.find<LoginController>();
//   // Widget buildEmail() {
//   //   return Column(
//   //     crossAxisAlignment: CrossAxisAlignment.start,
//   //     children: <Widget>[
//   //       const SizedBox(height: 10),
//   //       Container(
//   //         //  margin: EdgeInsets.only(top: 70),
//   //         alignment: Alignment.centerLeft,
//   //         decoration: BoxDecoration(
//   //           color: Colors.white,
//   //           borderRadius: BorderRadius.circular(10),
//   //           boxShadow: const [
//   //             BoxShadow(
//   //               color: Colors.black26,
//   //               blurRadius: 6,
//   //               offset: Offset(0, 2),
//   //             ),
//   //           ],
//   //         ),
//   //         height: 60,
//   //         child: Column(
//   //           children: [
//   //             const TextField(
//   //               keyboardType: TextInputType.number,
//   //               style: TextStyle(color: Colors.black87),
//   //               decoration: InputDecoration(
//   //                 border: InputBorder.none,
//   //                 contentPadding: EdgeInsets.only(top: 14),
//   //                 hintText: 'Enter Mobile Number',
//   //                 prefix: Padding(
//   //                   padding: EdgeInsets.all(4),
//   //                   child: Text('+91'),
//   //                 ),
//   //                 hintStyle: TextStyle(color: Colors.black38),
//   //               ),
//   //             ),
//   //             Visibility(
//   //               child: TextField(
//   //                 controller: otpController,
//   //                 decoration: InputDecoration(
//   //                   hintText: 'OTP',
//   //                   prefix: Padding(
//   //                     padding: EdgeInsets.all(4),
//   //                     child: Text(''),
//   //                   ),
//   //                 ),
//   //                 maxLength: 6,
//   //                 keyboardType: TextInputType.number,
//   //               ),
//   //               visible: otpVisibility,
//   //             ),
//   //             const SizedBox(
//   //               height: 10,
//   //             ),
//   //             MaterialButton(
//   //               color: Colors.indigo[900],
//   //               onPressed: () {
//   //                 if (otpVisibility) {
//   //                   verifyOTP();
//   //                 } else {
//   //                   loginWithPhone();
//   //                 }
//   //               },
//   //               child: Text(
//   //                 otpVisibility ? "Verify" : "Login",
//   //                 style: const TextStyle(
//   //                   color: Colors.white,
//   //                   fontSize: 20,
//   //                 ),
//   //               ),
//   //             ),
//   //           ],
//   //         ),
//   //       ),
  // Obx(() {
  //   return Text(
  //     controller.msg.value,
  //     style: const TextStyle(color: Colors.white),
  //   );
  // },
  // ),
//   //     ],
//   //   );
//   // }

//   // Widget buildLoginBtn() {
//   //   return Container(
//   //     margin: const EdgeInsets.only(bottom: 10, top: 20),
//   //     //padding: const EdgeInsets.symmetric(vertical: 25),
//   //     width: double.infinity,
//   //     child: ElevatedButton(
//   //       onPressed: () {
//   //         Get.to(const MedicalDeshboardPage());
//   //       },
//   //       style: ElevatedButton.styleFrom(primary: Colors.blue.shade900),
//   //       child: const Text(
//   //         'CONTINUE',
//   //         style: TextStyle(
//   //             color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
//   //       ),
//   //     ),
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //  resizeToAvoidBottomInset: false,
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage('images/peakpx.jpg'), fit: BoxFit.cover),
//         ),
//         child: SingleChildScrollView(
//           physics: const AlwaysScrollableScrollPhysics(),
//           padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
//           child: Column(
//             children: <Widget>[
//               const SizedBox(
//                 height: 600,
//               ),
//               // buildEmail(),
//               // buildLoginBtn(),
//               TextField(
//                 controller: phoneController,
//                 decoration: const InputDecoration(
//                   hintText: 'Phone Number',
//                   prefix: Padding(
//                     padding: EdgeInsets.all(4),
//                     child: Text('+91'),
//                   ),
//                 ),
//                 maxLength: 10,
//                 keyboardType: TextInputType.phone,
//               ),
//               Visibility(
//                 child: TextField(
//                   controller: otpController,
//                   decoration: InputDecoration(
//                     hintText: 'OTP',
//                     prefix: Padding(
//                       padding: EdgeInsets.all(4),
//                       child: Text(''),
//                     ),
//                   ),
//                   maxLength: 6,
//                   keyboardType: TextInputType.number,
//                 ),
//                 visible: otpVisibility,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               MaterialButton(
//                 color: Colors.indigo[900],
//                 onPressed: () {
//                   if (otpVisibility) {
//                     verifyOTP();
//                   } else {
//                     loginWithPhone();
//                   }
//                 },
//                 child: Text(
//                   otpVisibility ? "Verify" : "Login",
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void loginWithPhone() async {
//     auth.verifyPhoneNumber(
//       phoneNumber: "+91" + phoneController.text,
//       verificationCompleted: (PhoneAuthCredential credential) async {
//         await auth.signInWithCredential(credential).then((value) {
//           print("You are logged in successfully");
//         });
//       },
//       verificationFailed: (FirebaseAuthException e) {
//         print(e.message);
//       },
//       codeSent: (String verificationId, int? resendToken) {
//         otpVisibility = true;
//         verificationID = verificationId;
//         setState(() {});
//       },
//       codeAutoRetrievalTimeout: (String verificationId) {},
//     );
//   }

//   void verifyOTP() async {
//     PhoneAuthCredential credential = PhoneAuthProvider.credential(
//         verificationId: verificationID, smsCode: otpController.text);

//     await auth.signInWithCredential(credential).then(
//       (value) {
//         setState(() {
//           user = FirebaseAuth.instance.currentUser;
//         });
//       },
//     ).whenComplete(
//       () {
//         if (user != null) {
//           Fluttertoast.showToast(
//             msg: "You are logged in successfully",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: Colors.red,
//             textColor: Colors.white,
//             fontSize: 16.0,
//           );
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(
//               builder: (context) => const DeshboardPage(),
//             ),
//           );
//         } else {
//           Fluttertoast.showToast(
//             msg: "your login is failed",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM,
//             timeInSecForIosWeb: 1,
//             backgroundColor: Colors.red,
//             textColor: Colors.white,
//             fontSize: 16.0,
//           );
//         }
//       },
//     );
//   }
// }
