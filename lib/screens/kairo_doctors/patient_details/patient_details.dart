import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/kairo_doctors/Deshboard_Doctor/Patient_Medicine_Prescription/patient_prescription.dart';
import 'package:kairohealth/screens/kairo_doctors/call/callscreen.dart';
import 'package:kairohealth/screens/kairo_doctors/patient_details/controller/patient_details_controller.dart';

import 'package:kairohealth/screens/kairo_doctors/add_prescription/prescriptionreport.dart';

class PatientDetailsPage extends StatefulWidget {
  const PatientDetailsPage({super.key});

  @override
  State<PatientDetailsPage> createState() => _PatientDetailsPageState();
}

class _PatientDetailsPageState extends State<PatientDetailsPage> {
  final controller = Get.find<PatientDetailsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent.shade700,
        title: const Text(
          'CONSULT ROOM',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.call,
            ),
            onPressed: () {
              Get.toNamed('/joinMeeting');
            },
          ),
          // PopupMenuButton(
          //   itemBuilder: (context) => [
          //     PopupMenuItem(
          //       child: Row(
          //         children: const [
          //           Icon(
          //             Icons.offline_bolt,
          //             color: Colors.black54,
          //           ),
          //           Text('Edit')
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ],
        centerTitle: true,
      ),
      body: Obx(() {
        return controller.isLoading.isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    // const SizedBox(height: 20),
                    // Row(
                    //   children: [
                    //     const SizedBox(width: 20),
                    //     Text(
                    //       'Case Sheet',
                    //       style: TextStyle(
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.bold,
                    //           color: Colors.blueGrey.shade700),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 20),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.blue),
                      child: Image(
                        image: NetworkImage(controller.image.toString()),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(width: 20),
                          Text(
                            controller.name.value,
                            style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w300,
                                color: Colors.blueGrey),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            '(${controller.email.value})',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade800),
                          ),
                          // SizedBox(width: 40),
                          // Text(
                          //   '|',
                          //   style: TextStyle(
                          //       fontSize: 16,
                          //       fontWeight: FontWeight.bold,
                          //       color: Colors.blueGrey),
                          // ),
                          // SizedBox(width: 8.0),
                          // Text(
                          //   '56, M ,Mumbai',
                          //   style: TextStyle(
                          //       fontSize: 16,
                          //       fontWeight: FontWeight.w500,
                          //       color: Colors.blueGrey),
                          // ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      child: Divider(height: 1),
                    ),
                    // Row(
                    //   children: [
                    //     const SizedBox(width: 20),
                    //     Text(
                    //       'Patient ID: 98756 ',
                    //       style: TextStyle(
                    //           fontSize: 16,
                    //           fontWeight: FontWeight.w500,
                    //           color: Colors.blueGrey.shade800),
                    //     ),
                    //   ],
                    // ),
                    //  const SizedBox(height: 8.0),
                    // Row(
                    //   children: const [
                    //     SizedBox(width: 20),
                    //     Text(
                    //       'Patient Date: 02/07/2022 | 21:00 AM',
                    //       style: TextStyle(
                    //           fontSize: 16,
                    //           fontWeight: FontWeight.bold,
                    //           color: Colors.blueGrey),
                    //     ),
                    //   ],
                    // ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        // builder: (context) => const PrescriptionReport(),
                        //   ),
                        // );
                        Get.toNamed('/drAddPrescription', arguments: [
                          {
                            'name': controller.name.toString(),
                            'patientID': controller.patientID.toString(),
                          }
                        ]);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(14),
                        // height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Image(
                              image: NetworkImage(
                                  'https://cdn0.iconfinder.com/data/icons/medical-healthcare-vol-2-1/512/laboratory_chemistry_lab_instruments-512.png'),
                              height: 50,
                            ),
                            Text(
                              'Add Prescription',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey),
                            ),
                            // SizedBox(width: 80),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Get.to(PatientPrescriptions());
                    //   },
                    //   child: Container(
                    //     padding: EdgeInsets.all(10),
                    //     alignment: Alignment.center,
                    //     margin: const EdgeInsets.all(14),
                    //     // height: 80,
                    //     width: double.infinity,
                    //     decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(10),
                    //       boxShadow: [
                    //         BoxShadow(
                    //           color: Colors.grey.withOpacity(0.5),
                    //           spreadRadius: 3,
                    //           blurRadius: 3,
                    //           offset: const Offset(0, 2),
                    //         ),
                    //       ],
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: const [
                    //         Image(
                    //           image: NetworkImage(
                    //               'https://previews.123rf.com/images/makc76/makc761805/makc76180500064/101075969-doctor-writing-notes-on-a-prescription-pad-empty-medical-prescription-rx-form-vector-illustration.jpg'),
                    //           height: 50,
                    //         ),
                    //         Text(
                    //           'Patient medicine Prescription',
                    //           style: TextStyle(
                    //               fontSize: 16,
                    //               fontWeight: FontWeight.bold,
                    //               color: Colors.blueGrey),
                    //         ),
                    //         // SizedBox(width: 80),
                    //         Icon(
                    //           Icons.arrow_forward_ios_rounded,
                    //           size: 20,
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Container(
                    //   alignment: Alignment.center,
                    //   margin: const EdgeInsets.all(20),
                    //   height: 80,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(10),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.grey.withOpacity(0.5),
                    //         spreadRadius: 3,
                    //         blurRadius: 3,
                    //         offset: const Offset(0, 2),
                    //       ),
                    //     ],
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     children: const [
                    //       Text(
                    //         'Vitals',
                    //         style: TextStyle(
                    //             fontSize: 17,
                    //             fontWeight: FontWeight.bold,
                    //             color: Colors.blueGrey),
                    //       ),
                    //       SizedBox(width: 180),
                    //       Icon(Icons.keyboard_arrow_down_rounded),
                    //     ],
                    //   ),
                    // ),
                    // Container(
                    //   alignment: Alignment.center,
                    //   margin: const EdgeInsets.all(20),
                    //   height: 80,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(10),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.grey.withOpacity(0.5),
                    //         spreadRadius: 3,
                    //         blurRadius: 3,
                    //         offset: const Offset(0, 2),
                    //       ),
                    //     ],
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     children: const [
                    //       Text(
                    //         'Patients Medical',
                    //         style: TextStyle(
                    //             fontSize: 17,
                    //             fontWeight: FontWeight.bold,
                    //             color: Colors.blueGrey),
                    //       ),
                    //       SizedBox(width: 90.0),
                    //       Icon(Icons.keyboard_arrow_down_rounded),
                    //     ],
                    //   ),
                    // ),
                    // Container(
                    //   alignment: Alignment.center,
                    //   margin: const EdgeInsets.all(20),
                    //   height: 370,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(10),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.grey.withOpacity(0.5),
                    //         spreadRadius: 5,
                    //         blurRadius: 7,
                    //         offset: const Offset(0, 2),
                    //       ),
                    //     ],
                    //   ),
                    //   child: const ClipRRect(
                    //     borderRadius: BorderRadius.only(
                    //       topLeft: Radius.circular(10.0),
                    //       topRight: Radius.circular(10.0),
                    //       bottomLeft: Radius.circular(10.0),
                    //       bottomRight: Radius.circular(10.0),
                    //     ),
                    //     child: Image(
                    //       image: NetworkImage(
                    //           'https://previews.123rf.com/images/makc76/makc761805/makc76180500064/101075969-doctor-writing-notes-on-a-prescription-pad-empty-medical-prescription-rx-form-vector-illustration.jpg'),
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              );
      }),
    );
  }
}
