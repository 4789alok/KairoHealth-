import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/kairo_doctors/add_prescription/controller/prescription_report_controller.dart';
import 'package:kairohealth/screens/prescription_list/prescriptions.dart';
import 'package:kairohealth/screens/kairo_doctors/add_prescription/writeprescriptionfortest.dart';

class PrescriptionReport extends StatefulWidget {
  const PrescriptionReport({super.key});

  @override
  State<PrescriptionReport> createState() => _PrescriptionReportState();
}

class _PrescriptionReportState extends State<PrescriptionReport> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<PrescriptionReportController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent.shade700,
        title: const Text(
          'Prescription Report',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(2.0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.blue.shade50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Hospital Name',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900),
                      ),
                    ),
                    // // const SizedBox(height: 5),
                    // // Text(
                    // //   'Dr. John Killer M.B.B.S(Ortho)',
                    // //   style: TextStyle(
                    // //       fontSize: 14,
                    // //       fontWeight: FontWeight.w500,
                    // //       color: Colors.grey.shade800),
                    // // ),
                    // // const SizedBox(height: 5),
                    // // Row(
                    // //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // //   children: [
                    // //     Text(
                    // //       '751 Victoria 123 Street,South Statue',
                    // //       style: TextStyle(
                    // //           fontSize: 12,
                    // //           fontWeight: FontWeight.normal,
                    // //           color: Colors.grey.shade800),
                    // //     ),
                    // //     Text(
                    // //       'PH:(+91)9876543231',
                    // //       style: TextStyle(
                    // //           fontSize: 12,
                    // //           fontWeight: FontWeight.normal,
                    // //           color: Colors.grey.shade800),
                    // //     ),
                    // //   ],
                    // // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text(
                    //       'Hometown, US 1234',
                    //       style: TextStyle(
                    //           fontSize: 12,
                    //           fontWeight: FontWeight.normal,
                    //           color: Colors.grey.shade800),
                    //     ),
                    //     Text(
                    //       'FAX:(+91)9876543231',
                    //       style: TextStyle(
                    //           fontSize: 12,
                    //           fontWeight: FontWeight.normal,
                    //           color: Colors.grey.shade800),
                    //     ),
                    //   ],
                    // ),
                    const SizedBox(height: 20),
                    Column(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Patient Name: ${controller.name}',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey.shade700),
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50.0),
                              child: Text(
                                'Age: ${controller.age}',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey.shade700),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Address: ${controller.address}',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey.shade700),
                            ),
                            Text(
                              'Date: ${getDate(DateFormat('yyyy-MM-dd – kk:mm').format(DateTime.now()))}',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey.shade700),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50.0),
                              child: Text(
                                'Gender: ${controller.gender}',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey.shade700),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        thickness: 3,
                        color: Colors.blue.shade600,
                      ),
                    ),
                    Column(
                      children: [
                        controller.medicineData.isEmpty
                            ? const SizedBox.shrink()
                            : Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Sr No',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Medicine name',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Qty',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    height: 20,
                                  ),
                                  ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.medicineData.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                (index + 1).toString(),
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                controller.medicineData[index]
                                                    .medicineName,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                controller
                                                    .medicineData[index].qty,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      })
                                ],
                              ),
                        controller.testData.isEmpty
                            ? const SizedBox.shrink()
                            : Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Divider(
                                      thickness: 3,
                                      color: Colors.blue.shade600,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Sr No',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Test name',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Urin',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Blood',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    height: 20,
                                  ),
                                  ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.testData.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                (index + 1).toString(),
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                controller
                                                    .testData[index].testName
                                                    .toString(),
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                controller.testData[index].urin
                                                    .toString(),
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                controller.testData[index].blood
                                                    .toString(),
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      })
                                ],
                              )
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => controller.hitAddPrescription(),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Colors.amber,
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        childPadding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          SpeedDialChild(
            onTap: () async {
              final data = await Get.toNamed('/drWritePrescription');
              // !.then((value) {
              //   controller.testData.add(value);
              // });
              if (data != null) {
                controller.testData.add(data);
              }
            },
            child: const Icon(Icons.my_library_books_rounded),
            label: 'Add Test',
          ),
          SpeedDialChild(
            onTap: () async {
              final data = await Get.toNamed('/drWritePrescriptionMedicine');
              // !.then((value) {
              //   controller.testData.add(value);
              // });
              if (data != null) {
                controller.medicineData.add(data);
              }
            },
            child: const Icon(Icons.receipt_long_rounded),
            label: 'Add Prescription',
          ),
        ],
      ),
    );
  }
}
