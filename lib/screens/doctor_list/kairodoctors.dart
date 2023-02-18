import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/models/index.dart';
import 'package:kairohealth/screens/doctor_list/controller/kairodoctors_controller.dart';
import 'package:kairohealth/widgets/custom_text.dart';

class KairoDoctorsPage extends StatefulWidget {
  const KairoDoctorsPage({super.key});

  @override
  State<KairoDoctorsPage> createState() => _KairoDoctorsPageState();
}

class _KairoDoctorsPageState extends State<KairoDoctorsPage> {
  List<DoctorDetails> data = Get.arguments[0]['data'] ?? <DoctorDetails>[];
  final controller = Get.find<DoctorPageController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
      ),
      body: data.isEmpty
          ? const SizedBox.expand(
              child: Center(
                child: CustomText(text: 'Empty List'),
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      SizedBox(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.amber.shade800),
                          onPressed: () {
                            onTap:
                            () => Get.toNamed('/joinMeeting');
                          },
                          child: const Text(
                            'Join Now',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const DoctorDetailsPage(),
                            //   ),
                            // );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(3.0),
                            //    height: 300,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      image: NetworkImage(
                                          data[index].photo.toString()),
                                      height: 150,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data[index].name.toString(),
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          data[index].post.toString(),
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.blue.shade700),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          "${data[index].experience.toString()} Years Exp.",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.blue.shade700),
                                        ),
                                        // const SizedBox(
                                        //   height: 2,
                                        // ),
                                        // const Text(
                                        //   'MBBS,DNB (Neurology)',
                                        //   style: TextStyle(
                                        //     fontSize: 16,
                                        //     fontWeight: FontWeight.w700,
                                        //   ),
                                        // ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              'You pay',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.all(3.0),
                                            ),
                                            Text(
                                              '\u{20B9}${data[index].fee.toString()}',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.blue.shade700),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.blueGrey,
                                      size: 25,
                                    ),
                                    Text(
                                      'Kairo Hospitals Seepat Road,Bilaspur',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueGrey),
                                    ),
                                  ],
                                ),
                                //  const SizedBox(height: 20),
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                //   children: const [
                                //     Text(
                                //       'BOOK APPOINTMENT',
                                //       style: TextStyle(
                                //           fontSize: 14,
                                //           fontWeight: FontWeight.bold,
                                //           color: Colors.blueGrey),
                                //     ),
                                //     SizedBox(width: 10),
                                //     Text(
                                //       'CONSULT TOMMORROW',
                                //       style: TextStyle(
                                //           fontSize: 14,
                                //           fontWeight: FontWeight.bold,
                                //           color: Colors.blueGrey),
                                //     ),
                                //   ],
                                // ),
                                // const SizedBox(height: 5.0),
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                //   children: [
                                //     SizedBox(
                                //       height: 50,
                                //       child: ElevatedButton(
                                //         style: ElevatedButton.styleFrom(
                                //             primary: Colors.amber.shade400),
                                //         onPressed: () {
                                //           Navigator.push(
                                //             context,
                                //             MaterialPageRoute(
                                //               builder: (context) =>
                                //                   const SelectTimeSlotPage(),
                                //             ),
                                //           );
                                //         },
                                //         child: Row(
                                //           children: const [
                                //             Icon(Icons.videocam_outlined,
                                //                 color: Colors.white),
                                //             Padding(
                                //               padding: EdgeInsets.all(2.0),
                                //             ),
                                //             Text(
                                //               'Book Vidio Consult',
                                //               style: TextStyle(
                                //                   fontSize: 14,
                                //                   fontWeight: FontWeight.bold,
                                //                   color: Colors.white),
                                //             ),
                                //           ],
                                //         ),
                                //       ),
                                //     ),
                                //     SizedBox(
                                //       height: 50,
                                //       child: ElevatedButton(
                                //         onPressed: () {},
                                //         child: Row(
                                //           children: const [
                                //             Icon(Icons.local_hospital_outlined,
                                //                 color: Colors.white),
                                //             Padding(
                                //               padding: EdgeInsets.all(2.0),
                                //             ),
                                //             Text(
                                //               'Book Hospital Visit',
                                //               style: TextStyle(
                                //                   fontSize: 14,
                                //                   fontWeight: FontWeight.bold,
                                //                   color: Colors.white),
                                //             ),
                                //           ],
                                //         ),
                                //       ),
                                //     ),
                                //   ],
                                // ),
                                GestureDetector(
                                  // onTap: () => Get.toNamed('/joinMeeting'),
                                  onTap: () {
                                    controller.hitRequestApi(
                                        data[index].id.toString(),
                                        controller.patientID);
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.all(8),
                                    padding: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: const Text(
                                      "consult with doctor",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: data.length,
                  ),
                ],
              ),
            ),
    );
  }
}
