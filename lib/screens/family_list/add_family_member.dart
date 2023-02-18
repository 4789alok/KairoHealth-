import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/family_list/controller/add_family_controller.dart';

class AddFamilyMemberPage extends StatefulWidget {
  const AddFamilyMemberPage({super.key});

  @override
  State<AddFamilyMemberPage> createState() => _AddFamilyMemberPageState();
}

class _AddFamilyMemberPageState extends State<AddFamilyMemberPage> {
  TextEditingController hello = TextEditingController();
  TextEditingController genderss = TextEditingController();

  bool _isObscure = true;

  get decoration => null;
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    final controller = Get.find<AddFamilyMemberController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Column(
          //  crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'ADD NEW FAMILY MEMBER',
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
                  const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(
                        'https://www.une.edu/sites/default/files/styles/full_width/public/2021-05/default-person.png?itok=rCP6h0x5',
                      )),
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
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Full name",
                            ),
                            controller: controller.nameController,
                            onSaved: (value) {
                              controller.name = value!;
                            },
                            validator: (value) {
                              return controller.validateName(value!);
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: "Email"),
                            controller: controller.emailController,
                            onSaved: (value) {
                              controller.mail = value!;
                            },
                            validator: (value) {
                              return controller.validateEmail(value!);
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: "Mobile no.", counterText: ''),
                            controller: controller.mobileController,
                            maxLength: 10,
                            onSaved: (value) {
                              controller.phone = value!;
                            },
                            validator: (value) {
                              return controller.validatePhone(value!);
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: controller.relationController,
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
                                            itemCount: Relation.length,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                padding: EdgeInsets.all(8),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    // clickme();
                                                    setState(() {
                                                      controller
                                                              .relationController
                                                              .text =
                                                          Relation[index]
                                                              ["relation"];
                                                    });
                                                    Get.back();
                                                  },
                                                  child: Text(
                                                    Relation[index]["relation"],
                                                    style: const TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      //   fontFamily: "Times New Roman",
                                                    ),
                                                  ),
                                                ),
                                              );
                                            })
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            showCursor: false,
                            readOnly: true,
                            decoration: const InputDecoration(
                              labelText: "Relation",
                              suffixIcon: Icon(
                                Icons.arrow_drop_down_rounded,
                              ),
                            ),
                            onSaved: (value) {
                              controller.relation = value!;
                            },
                            validator: (value) {
                              return controller.validateRelationShip(value!);
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: controller.genderController,
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
                                    height: 100,
                                    child: Column(
                                      children: [
                                        const Text(
                                          " Select your Gender",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold

                                              //   fontFamily: "Times New Roman",
                                              ),
                                        ),
                                        ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: Gender.length,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      controller
                                                              .genderController
                                                              .text =
                                                          Gender[index]
                                                              ["gender"];
                                                      Get.back();
                                                    });
                                                  },
                                                  child: Text(
                                                    Gender[index]["gender"],
                                                    style: const TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      //   fontFamily: "Times New Roman",
                                                    ),
                                                  ),
                                                ),
                                              );
                                            })
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            showCursor: true,
                            readOnly: true,
                            decoration: const InputDecoration(
                              labelText: "Gender",
                              suffixIcon: Icon(
                                Icons.arrow_drop_down_rounded,
                              ),
                            ),
                            onSaved: (value) {
                              controller.gender.value = value!;
                            },
                            validator: (value) {
                              return controller.validateGender(value!);
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Obx(() {
            return controller.isLoading.isTrue
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(
                        color: Colors.amber,
                      )
                    ],
                  )
                : ElevatedButton(
                    onPressed: () {
                      final isValid = formKey.currentState!.validate();
                      if (!isValid) {
                        return;
                      }
                      formKey.currentState!.save();
                      controller.hitAddMemberApi();
                    },
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.amber.shade900),
                    child: const Text(
                      "SAVE",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  );
          }),
        ],
      ),
    );
  }
}

final List<Map<String, dynamic>> Relation = [
  {
    "relation": "Father",
  },
  {
    "relation": "Mother",
  },
  {
    "relation": "Brother",
  },
  {
    "relation": "Wife",
  },
  {
    "relation": "Sister",
  },
];
final List<Map<String, dynamic>> Gender = [
  {
    "gender": "Male",
  },
  {
    "gender": "Female",
  },
];
