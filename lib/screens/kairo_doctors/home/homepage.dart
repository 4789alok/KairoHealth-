import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/kairo_doctors/home/controller/home_controller.dart';
import 'package:kairohealth/screens/kairo_doctors/patient_details/patient_details.dart';
import 'package:kairohealth/widgets/patient_tile.dart';

class DrHomePage extends GetView<DrHomeController> {
  DrHomePage({super.key}) {
    controller.hitApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.tealAccent.shade700,
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_rounded),
            ),
          )
        ],
      ),
      body: Obx(() {
        return controller.isLoading.isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.tealAccent.shade700,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(left: 30, bottom: 30),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                width: MediaQuery.of(context).size.width / 2.8,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      controller.userData.value.photo
                                          .toString(),
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Dr. ${controller.userData.value.name.toString()}',
                                      style: TextStyle(
                                          color: Colors.grey.shade900,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Divider(
                                      height: 20,
                                      color: Colors.grey.shade900,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "+91${controller.userData.value.phone.toString()}",
                                      style: TextStyle(
                                          color: Colors.grey.shade900,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      controller.userData.value.email
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.grey.shade900,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // const SizedBox(height: 15),
                    // DatePicker(
                    //   DateTime.now(),
                    //   width: 60,
                    //   height: 80,
                    //   controller: _controller,
                    //   initialSelectedDate: DateTime.now(),
                    //   selectionColor: Colors.tealAccent.shade700,
                    //   selectedTextColor: Colors.white,
                    //   inactiveDates: [
                    //     DateTime.now().add(
                    //       const Duration(days: 3),
                    //     ),
                    //     DateTime.now().add(
                    //       const Duration(days: 4),
                    //     ),
                    //     DateTime.now().add(
                    //       const Duration(days: 7),
                    //     ),
                    //   ],
                    //   onDateChange: (date) {
                    //     setState(
                    //       () {
                    //         _selectedValue = date;
                    //       },
                    //     );
                    //   },
                    // ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(10),
                      //  height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade50,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Deshboard',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.blueGrey.shade700),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            child: Divider(
                              height: 2,
                              color: Colors.black,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //  const SizedBox(width: 5.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total suggested patient by AIOM :',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blueGrey.shade900),
                                  ),
                                  const Text(
                                    '150',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //const SizedBox(width: 5.0),
                                  Text(
                                    'No. of handled AIOM patients:',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blueGrey.shade900),
                                  ),
                                  const Text(
                                    '23',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //  const SizedBox(height: 10),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.patientList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return PatientTile(
                            name: controller.patientList[index].name.toString(),
                            email:
                                controller.patientList[index].email.toString(),
                            // gender: controller.patientList[index].gender
                            //     .toString(),
                            photo:
                                controller.patientList[index].photo.toString(),
                            // onClick: () => Get.toNamed('/joinMeeting'),
                            onClick: () =>
                                Get.toNamed('/patientDetails', arguments: [
                              {
                                'userToken': controller.patientList[index].token
                                    .toString(),
                              }
                            ]),
                          );
                        })
                  ],
                ),
              );
      }),
    );
  }
}
