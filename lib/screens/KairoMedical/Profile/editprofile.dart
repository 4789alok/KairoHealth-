import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class EditProfileMedical extends StatefulWidget {
  const EditProfileMedical({super.key});

  @override
  State<EditProfileMedical> createState() => _EditProfileMedicalState();
}

class _EditProfileMedicalState extends State<EditProfileMedical> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  get decoration => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("Edit Profile"),
        // backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0xff69BF7F),
                        radius: 60.0,
                        backgroundImage: NetworkImage(
                            'https://media.istockphoto.com/id/522404177/photo/pharmacy-chemist-woman-in-drugstore.jpg?s=612x612&w=0&k=20&c=7QL_wM164wwOjcxfxGUq13XRCA1puhYr997TiP23Bqg='),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 30,
                          width: 30,
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
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      labelText: "Full Name",
                      labelStyle: const TextStyle(
                          color: Color(0xFF033d73),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        borderSide: BorderSide(
                          color: Color(0xFF033d73),
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a valid name';
                      }
                      if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        return 'Please enter a valid name';
                      }
                      return null;
                    },
                  ),
                ),
                // const SizedBox(
                //   height: 04,
                // ),
                SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 12),
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "Contact No",
                              labelStyle: const TextStyle(
                                  color: Color(0xFF033d73),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(
                                  color: Color(0xFF033d73),
                                ),
                              ),
                            ),
                            onChanged: (value) {
                              _formKey.currentState?.validate();
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a valid phone number';
                              }
                              if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                                return 'Please enter a valid 10-digit phone number';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 12),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Gender",
                              labelStyle: const TextStyle(
                                  color: Color(0xFF033d73),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(
                                  color: Color(0xFF033d73),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      labelText: "Mobile no.",
                      labelStyle: const TextStyle(
                          color: Color(0xFF033d73),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        borderSide: BorderSide(
                          color: Color(0xFF033d73),
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      _formKey.currentState?.validate();
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a valid phone number';
                      }
                      if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                        return 'Please enter a valid 10-digit phone number';
                      }
                      return null;
                    },
                  ),
                ),

                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      labelStyle: const TextStyle(
                          color: Color(0xFF033d73),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        borderSide: BorderSide(
                          color: Color(0xFF033d73),
                        ),
                      ),
                    ),
                    validator: MultiValidator(
                      [
                        RequiredValidator(errorText: "*Required Email*"),
                        EmailValidator(
                            errorText: "*please enter your valid email*")
                      ],
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      labelText: "Address",
                      labelStyle: const TextStyle(
                          color: Color(0xFF033d73),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        borderSide: BorderSide(
                          color: Color(0xFF033d73),
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a valid address';
                      }
                      if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        return 'Please enter a valid address';
                      }
                      return null;
                    },
                  ),
                ),

                // Container(
                //   padding:
                //       const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                //   child: TextFormField(
                //     decoration: InputDecoration(
                //         labelText: "Experience",
                //         labelStyle: const TextStyle(
                //             color: Color(0xFF033d73),
                //             fontWeight: FontWeight.bold,
                //             fontSize: 14),
                //         enabledBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(6),
                //         ),
                //         focusedBorder: const OutlineInputBorder(
                //             borderRadius: BorderRadius.all(Radius.circular(6)),
                //             borderSide: BorderSide(
                //               color: Color(0xFF033d73),
                //             ))),
                //   ),
                // ),

                // Container(
                //   padding:
                //       const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                //   child: TextFormField(
                //     decoration: InputDecoration(
                //         labelText: "Specialised",
                //         labelStyle: const TextStyle(
                //             color: Color(0xFF033d73),
                //             fontWeight: FontWeight.bold,
                //             fontSize: 14),
                //         enabledBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(6),
                //         ),
                //         focusedBorder: const OutlineInputBorder(
                //             borderRadius: BorderRadius.all(Radius.circular(6)),
                //             borderSide: BorderSide(
                //               color: Color(0xFF033d73),
                //             ))),
                //   ),
                // ),

// Container(
                //   padding:
                //       const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                //   child: TextFormField(
                //     decoration: InputDecoration(
                //         labelText: "Languages",
                //         labelStyle: const TextStyle(
                //             color: Color(0xFF033d73),
                //             fontWeight: FontWeight.bold,
                //             fontSize: 14),
                //         enabledBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(6),
                //         ),
                //         focusedBorder: const OutlineInputBorder(
                //             borderRadius: BorderRadius.all(Radius.circular(6)),
                //             borderSide: BorderSide(
                //               color: Color(0xFF033d73),
                //             ))),
                //   ),
                // ),
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      fontFamily: "Times New Roman",
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
