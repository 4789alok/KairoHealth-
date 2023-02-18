import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:kairohealth/screens/auth/controller/register_controller.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final controller = Get.find<RegisterController>();
  bool isLoading = false;
  bool _isObscure = true;
  get decoration => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Column(
          //  crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Register',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  // Container(
                  //   padding: const EdgeInsets.only(top: 10),
                  //   child: const Text(
                  //     "sign up",
                  //     style: TextStyle(color: Colors.blue, fontSize: 20),
                  //   ),
                  // ),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      const CircleAvatar(
                          radius: 50.0,
                          backgroundImage: NetworkImage(
                            'https://www.une.edu/sites/default/files/styles/full_width/public/2021-05/default-person.png?itok=rCP6h0x5',
                          )),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 4, color: Colors.blue),
                              color: Colors.green),
                          child: const Center(
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    margin: const EdgeInsets.all(10.0),
                    width: double.infinity,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: controller.nameController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: const InputDecoration(
                              labelText: "Full name",
                            ),
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a name';
                              }
                              if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                                return 'Please enter a valid name';
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              controller.name = newValue!;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: controller.emailController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration:
                                const InputDecoration(labelText: "Email"),
                            keyboardType: TextInputType.emailAddress,
                            validator: MultiValidator(
                              [
                                RequiredValidator(
                                    errorText: "*Required Email*"),
                                EmailValidator(
                                    errorText:
                                        "*please enter your valid email*")
                              ],
                            ),
                            onSaved: (newValue) {
                              controller.email = newValue!;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            readOnly: true,
                            controller: controller.mobileController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration:
                                const InputDecoration(labelText: "Mobile no."),

                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              _formKey.currentState?.validate();
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a phone number';
                              }
                              if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                                return 'Please enter a valid 10-digit phone number';
                              }
                              return null;
                            },
                            // validator: MultiValidator([
                            //   RequiredValidator(
                            //       errorText: "*Required Mobile no.*")
                            // ]),
                            onSaved: (newValue) {
                              controller.mobile = newValue!;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: controller.roleController,
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    margin: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      //   color: Colors.amber,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    height: 200,
                                    child: Column(
                                      children: [
                                        const Text(
                                          " Choose your Answer",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold

                                              //   fontFamily: "Times New Roman",
                                              ),
                                        ),
                                        ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: Role.length,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                padding:
                                                    const EdgeInsets.all(8),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    // clickme();
                                                    setState(() {
                                                      controller.roleController
                                                              .text =
                                                          Role[index]["role"];
                                                    });
                                                    Get.back();
                                                  },
                                                  child: Text(
                                                    Role[index]["role"],
                                                    style: const TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      //   fontFamily: "Times New Roman",
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            showCursor: false,
                            readOnly: true,
                            decoration:
                                const InputDecoration(labelText: "Role"),
                            validator: MultiValidator([
                              RequiredValidator(errorText: "*Required Role*")
                            ]),
                            onSaved: (newValue) {
                              controller.role = newValue!;
                            },
                          ),
                          // SizedBox(
                          //   height: 8,
                          // ),

                          // TextFormField(
                          //   controller: genderss,
                          //   onTap: () {
                          //     showModalBottomSheet(
                          //       context: context,
                          //       builder: (BuildContext context) {
                          //         return Container(
                          //           margin: const EdgeInsets.all(8),
                          //           decoration: const BoxDecoration(
                          //             //   color: Colors.amber,
                          //             borderRadius:
                          //                 BorderRadius.all(Radius.circular(10)),
                          //           ),
                          //           height: 100,
                          //           child: Column(
                          //             children: [
                          //               const Text(
                          //                 " Select your Gender",
                          //                 style: TextStyle(
                          //                     fontSize: 18,
                          //                     color: Colors.black,
                          //                     fontWeight: FontWeight.bold

                          //                     //   fontFamily: "Times New Roman",
                          //                     ),
                          //               ),
                          //               ListView.builder(
                          //                   shrinkWrap: true,
                          //                   itemCount: Gender.length,
                          //                   itemBuilder: (context, index) {
                          //                     return Container(
                          //                       padding: const EdgeInsets.all(10),
                          //                       child: GestureDetector(
                          //                         onTap: () {
                          //                           setState(() {
                          //                             genderss.text =
                          //                                 Gender[index]["gender"];
                          //                             Get.back();
                          //                           });
                          //                         },
                          //                         child: Text(
                          //                           Gender[index]["gender"],
                          //                           style: const TextStyle(
                          //                             fontSize: 16,
                          //                             color: Colors.black,
                          //                             //   fontFamily: "Times New Roman",
                          //                           ),
                          //                         ),
                          //                       ),
                          //                     );
                          //                   }),
                          //             ],
                          //           ),
                          //         );
                          //       },
                          //     );
                          //   },
                          //   showCursor: true,
                          //   readOnly: true,
                          //   decoration: const InputDecoration(
                          //     labelText: "Gender",
                          //   ),
                          // )
                          // Container(
                          //   padding: const EdgeInsets.all(10),
                          //   child: TextFormField(
                          //     obscureText: _isObscure,
                          //     decoration: InputDecoration(
                          //       labelText: "Password",
                          //       suffixIcon: IconButton(
                          //         icon: Icon(
                          //           _isObscure
                          //               ? Icons.visibility
                          //               : Icons.visibility_off,
                          //         ),
                          //         onPressed: () {
                          //           setState(() {
                          //             _isObscure = !_isObscure;
                          //           });
                          //         },
                          //       ),
                          //     ),
                          //     keyboardType: TextInputType.visiblePassword,
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 10,
                          // ),
                          // Container(
                          //   padding: const EdgeInsets.all(10),
                          //   child: TextFormField(
                          //     obscureText: _isObscure,
                          //     decoration: InputDecoration(
                          //       labelText: "Confirm password",
                          //       suffixIcon: IconButton(
                          //         icon: Icon(
                          //           _isObscure
                          //               ? Icons.visibility
                          //               : Icons.visibility_off,
                          //         ),
                          //         onPressed: () {
                          //           setState(() {
                          //             _isObscure = !_isObscure;
                          //           });
                          //         },
                          //       ),
                          //     ),
                          //     keyboardType: TextInputType.visiblePassword,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final isValid = _formKey.currentState!.validate();
              if (!isValid) {
                return;
              }
              _formKey.currentState?.save();
              controller.hitRegisterApi();
            },
            style: TextButton.styleFrom(
                primary: Colors.white, backgroundColor: Colors.amber.shade900),
            child: isLoading
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Loading...',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ],
                  )
                : const Text(
                    "Submit",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
          ),
        ],
      ),
    );
  }

  void _validateInputs() {}
}

final List<Map<String, dynamic>> Role = [
  {
    "role": "Doctor",
  },
  {
    "role": "Pharmacy",
  },
  {
    "role": "Laboratory",
  },
  {
    "role": "Patient",
  },
  // {
  //   "relation": "Sister",
  // },
];
// final List<Map<String, dynamic>> Gender = [
//   {
//     "gender": "Male",
//   },
//   {
//     "gender": "Female",
//   },
// ];
