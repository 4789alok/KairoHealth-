import 'package:flutter/material.dart';

class DoctorDetailsPage extends StatefulWidget {
  const DoctorDetailsPage({super.key});

  @override
  State<DoctorDetailsPage> createState() => _DoctorDetailsPageState();
}

class _DoctorDetailsPageState extends State<DoctorDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Doctors details',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Center(
                    child: Image(
                      image: NetworkImage(
                          'https://anavara.com/wp-content/uploads/2021/11/Dr.-Mohammed-Asif-Qureshi.png'),
                      height: 170,
                    ),
                  ),
                  //  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Dr. Avinash Gupta',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),

                  const Divider(thickness: 1.5),

                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'UROLOGY | 22 YRS EXP',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, bottom: 10),
                    child: Text(
                      'MBBS, MS(General Surgery), M.Ch',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),

                  const Divider(thickness: 1.5),

                  Row(
                    children: const [
                      // SizedBox(width: 20),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.location_on,
                          color: Colors.blueGrey,
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Kairo Hospitals Seepat Road,Bilaspur',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                      ),
                    ],
                  ),

                  const Divider(thickness: 1.5),

                  Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.all(8),
                    //   height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                        Row(
                          children: const [
                            SizedBox(width: 25),
                            Text(
                              'How to consult via text/audio/video?',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            SizedBox(width: 20),
                            Icon(
                              Icons.person,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Choose the doctor',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            SizedBox(width: 20),
                            Icon(
                              Icons.local_hospital,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Book a slot',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            SizedBox(width: 20),
                            Icon(
                              Icons.payment,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Make Payment',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            SizedBox(width: 20),
                            Icon(
                              Icons.mobile_screen_share_outlined,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Be present in the consult room within\n Kairo247',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            SizedBox(width: 20),
                            Icon(
                              Icons.videocam_rounded,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Speak to the doctor via video/audio/text',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            SizedBox(width: 20),
                            Icon(
                              Icons.book_rounded,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Receive prescriptions instantly',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            SizedBox(width: 20),
                            Icon(
                              Icons.chat_rounded,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Follow Up via text - valid for 7 days',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(14),
                    margin: const EdgeInsets.all(10),
                    //  height: 550,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: 20),
                        SizedBox(width: 23),
                        Text(
                          'Timings',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),

                        Text(
                          'Video Consult :',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            //  SizedBox(width: 20),
                            // Text(
                            //   'Every',
                            //   style: TextStyle(
                            //     fontSize: 15,
                            //     fontWeight: FontWeight.bold,
                            //     color: Colors.blue,
                            //   ),
                            // ),

                            Text(
                              '05:00 PM - 07:00 PM',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),

                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: const [
                        //     // SizedBox(width: 20),
                        //     Text(
                        //       'MONDAY',
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue,
                        //       ),
                        //     ),
                        //     SizedBox(width: 80),
                        //     Text(
                        //       '05:00 PM - 07:00 PM',
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(height: 10),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: const [
                        //     // SizedBox(width: 20),
                        //     Text(
                        //       'TUESDAY',
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue,
                        //       ),
                        //     ),
                        //     SizedBox(width: 80),
                        //     Text(
                        //       '05:00 PM - 07:00 PM',
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(height: 10),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: const [
                        //     //  SizedBox(width: 20),
                        //     Text(
                        //       'WEDNESDAY',
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue,
                        //       ),
                        //     ),
                        //     SizedBox(width: 60),
                        //     Text(
                        //       '05:00 PM - 07:00 PM',
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(height: 10),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: const [
                        //     // SizedBox(width: 20),
                        //     Text(
                        //       'THURSDAY',
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue,
                        //       ),
                        //     ),
                        //     SizedBox(width: 70),
                        //     Text(
                        //       '05:00 PM - 07:00 PM',
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(height: 10),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: const [
                        //     // SizedBox(width: 20),
                        //     Text(
                        //       'FRIDAY',
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue,
                        //       ),
                        //     ),
                        //     SizedBox(width: 90),
                        //     Text(
                        //       '05:00 PM - 07:00 PM',
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(height: 10),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: const [
                        //     //  SizedBox(width: 20),
                        //     Text(
                        //       'SATURDAY',
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue,
                        //       ),
                        //     ),
                        //     SizedBox(width: 70),
                        //     Text(
                        //       '05:00 PM - 07:00 PM',
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(height: 10),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: const [
                        //     //   SizedBox(width: 20),
                        //     Text(
                        //       'SUNDAY',
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue,
                        //       ),
                        //     ),
                        //     SizedBox(width: 90),
                        //     Text(
                        //       'NO SLOTS AVAILABLE',
                        //       style: TextStyle(
                        //         fontSize: 14,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.blue,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(height: 20),
                        // Column(
                        //   children: [
                        //     const SizedBox(height: 15),
                        //     Row(
                        //       children: const [
                        //         SizedBox(width: 20),
                        //         Text(
                        //           'Hospital Visit :',
                        //           style: TextStyle(
                        //               fontSize: 16,
                        //               fontWeight: FontWeight.bold,
                        //               color: Colors.blueGrey),
                        //         ),
                        //       ],
                        //     ),
                        //     const SizedBox(height: 20),
                        //     Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //       children: const [
                        //         // SizedBox(width: 20),
                        //         Text(
                        //           'MONDAY',
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.blue,
                        //           ),
                        //         ),
                        //         SizedBox(width: 80),
                        //         Text(
                        //           'NO SLOTS AVAILABLE',
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.blue,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //     const SizedBox(height: 10),
                        //     Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //       children: const [
                        //         // SizedBox(width: 20),
                        //         Text(
                        //           'TUESDAY',
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.blue,
                        //           ),
                        //         ),
                        //         SizedBox(width: 90),
                        //         Text(
                        //           '05:00 PM - 06:00 PM',
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.blue,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //     const SizedBox(height: 10),
                        //     Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //       children: const [
                        //         //  SizedBox(width: 20),
                        //         Text(
                        //           'WEDNESDAY',
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.blue,
                        //           ),
                        //         ),
                        //         SizedBox(width: 60),
                        //         Text(
                        //           'NO SLOTS AVAILABLE',
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.blue,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //     const SizedBox(height: 10),
                        //     Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //       children: const [
                        //         // SizedBox(width: 20),
                        //         Text(
                        //           'THURSDAY',
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.blue,
                        //           ),
                        //         ),
                        //         SizedBox(width: 80),
                        //         Text(
                        //           '05:00 PM - 06:00 PM',
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.blue,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //     const SizedBox(height: 10),
                        //     Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //       children: const [
                        //         // SizedBox(width: 20),
                        //         Text(
                        //           'FRIDAY',
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.blue,
                        //           ),
                        //         ),
                        //         SizedBox(width: 90),
                        //         Text(
                        //           'NO SLOTS AVAILABLE',
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.blue,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //     const SizedBox(height: 10),
                        //     Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //       children: const [
                        //         //  SizedBox(width: 20),
                        //         Text(
                        //           'SATURDAY',
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.blue,
                        //           ),
                        //         ),
                        //         SizedBox(width: 80),
                        //         Text(
                        //           '05:00 PM - 06:00 PM',
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.blue,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //     const SizedBox(height: 10),
                        //     Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //       children: const [
                        //         //   SizedBox(width: 20),
                        //         Text(
                        //           'SUNDAY',
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.blue,
                        //           ),
                        //         ),
                        //         SizedBox(width: 90),
                        //         Text(
                        //           'NO SLOTS AVAILABLE',
                        //           style: TextStyle(
                        //             fontSize: 14,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.blue,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //  ],
                        //),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                    padding: EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: const Text(
                      "consult with doctor",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),

          //
        ],
      ),
    );
  }
}
