import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/family_list/add_family_member.dart';
import 'package:kairohealth/screens/family_list/controller/family_list_controller.dart';
import 'package:kairohealth/widgets/custom_text.dart';

class FamilyListPage extends StatefulWidget {
  const FamilyListPage({super.key});

  @override
  State<FamilyListPage> createState() => _FamilyListPageState();
}

class _FamilyListPageState extends State<FamilyListPage> {
  final controller = Get.find<FamilyListController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'MANAGE FAMILY MEMBER',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              return controller.isLoading.isTrue
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  // : controller.dataList.isEmpty
                  //     ? const Center(
                  //         child: CustomText(text: 'Empty List'),
                  //       )
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          //  const SizedBox(height: 30),
                          // Container(
                          //   padding: EdgeInsets.all(16),
                          //   margin: const EdgeInsets.all(10),
                          //   //   height: 100,
                          //   width: double.infinity,
                          //   decoration: BoxDecoration(
                          //     color: Colors.blueGrey.shade700,
                          //     borderRadius: BorderRadius.circular(15),
                          //     boxShadow: [
                          //       BoxShadow(
                          //         color: Colors.grey.withOpacity(0.5),
                          //         spreadRadius: 2,
                          //         blurRadius: 3,
                          //         offset: const Offset(0, 2),
                          //       ),
                          //     ],
                          //   ),
                          //   child: Column(
                          //     children: const [
                          //       Text(
                          //         'Create your primary UHID by selecting any one of your own profile from below.',
                          //         style: TextStyle(
                          //             color: Colors.white,
                          //             fontSize: 16,
                          //             fontWeight: FontWeight.bold),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          //   const SizedBox(height: 30),
                          ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.dataList.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(10),
                                  // height: 160,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                    border:
                                        Border.all(color: Colors.blue.shade50),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade200
                                            .withOpacity(0.5),
                                        spreadRadius: 0.5,
                                        blurRadius: 0.5,
                                        // offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      //   const SizedBox(height: 20),
                                      Row(
                                        children: [
                                          //   const SizedBox(width: 30),
                                          // const Padding(
                                          //   padding:
                                          //       EdgeInsets.only(right: 8.0),
                                          //   child: Image(
                                          //     image: NetworkImage(
                                          //         'https://mangiapizzaallegany.com/wp-content/uploads/2021/01/default-person.png'),
                                          //     color: Colors.blueGrey,
                                          //     height: 80,
                                          //   ),
                                          // ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                controller.dataList[index].name
                                                    .toString(),
                                                style: const TextStyle(
                                                    color: Colors.blueGrey,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Divider(
                                                thickness: 1,
                                                height: 5,
                                              ),
                                              Text(
                                                controller.dataList[index].email
                                                    .toString(),
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                controller.dataList[index].phone
                                                    .toString(),
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                "${controller.dataList[index].relation.toUpperCase()} | ${controller.dataList[index].gender.toUpperCase()}",
                                                style: const TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              })
                        ],
                      ),
                    );
            }),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blueGrey.shade800),
            onPressed: () {
              Get.toNamed('/addFamilyMember')!
                  .then((value) => controller.hitApi());
            },
            child: const Text(
              'ADD NEW PROFILE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
