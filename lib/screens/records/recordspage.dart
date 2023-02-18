import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/screens/records/record_details/attachmentandreports.dart';
import 'package:kairohealth/screens/profile/profile.dart';
import 'package:kairohealth/screens/prescription_list/prescriptions.dart';
import 'package:kairohealth/widgets/custom_text.dart';

class RecordsPage extends StatefulWidget {
  const RecordsPage({super.key});

  @override
  State<RecordsPage> createState() => _RecordsPageState();
}

class _RecordsPageState extends State<RecordsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Records',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Colors.blue.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              height: 130,
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 34,
                            backgroundColor:
                                const Color.fromARGB(255, 231, 226, 226),
                            child: ClipOval(
                              child: Image.network(
                                'https://lussier.co/themes/custom/ldp/assets/src/images/Broker_Business.png',
                                height: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                        ),
                        const Text(
                          'Shivash',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    );
                  }),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              alignment: Alignment.center,
              margin: const EdgeInsets.all(6),
              //  height: 620,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  //  const SizedBox(height: 20),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const MyConsultationsPage(),
                  //       ),
                  //     );
                  //   },
                  //   child: Row(
                  //     children: [
                  //       const SizedBox(width: 20),
                  //       CircleAvatar(
                  //         radius: 25,
                  //         backgroundColor: Colors.blue.shade50,
                  //         child: ClipOval(
                  //           child: Image.network(
                  //             'https://cdn-icons-png.flaticon.com/512/760/760360.png',
                  //             width: 30,
                  //             height: 30,
                  //             fit: BoxFit.cover,
                  //           ),
                  //         ),
                  //       ),
                  //       const SizedBox(width: 20),
                  //       const Text(
                  //         'My Consultations',
                  //         style: TextStyle(
                  //             fontSize: 20, fontWeight: FontWeight.w500),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/prescriptionList');
                    },
                    child: Row(
                      children: [
                        // const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.red.shade50,
                            child: ClipOval(
                              child: Image.network(
                                'https://cdn4.iconfinder.com/data/icons/content-copyright-5/60/book__education__knowledge__add__plus-512.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        //  const SizedBox(width: 20),
                        const Text(
                          'Prescriptions',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  //  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const AttachmentAndReportsPage(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        // const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.green.shade50,
                            child: ClipOval(
                              child: Image.network(
                                'https://cdn.pixabay.com/photo/2012/04/11/12/08/paper-clip-27821__340.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        //  const SizedBox(width: 20),
                        const Text(
                          'Attachment and Reports',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  //  const SizedBox(height: 10),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const MySubscriptionsPage(),
                  //       ),
                  //     );
                  //   },
                  //   child: Row(
                  //     children: [
                  //       const SizedBox(width: 20),
                  //       CircleAvatar(
                  //         radius: 25,
                  //         backgroundColor: Colors.red.shade100,
                  //         child: ClipOval(
                  //           child: Image.network(
                  //             'https://img.icons8.com/color/480/heart-with-pulse.png',
                  //             width: 30,
                  //             height: 30,
                  //             fit: BoxFit.cover,
                  //           ),
                  //         ),
                  //       ),
                  //       const SizedBox(width: 20),
                  //       const Text(
                  //         'My Subscriptions',
                  //         style: TextStyle(
                  //             fontSize: 20, fontWeight: FontWeight.w500),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/profile');
                    },
                    child: Row(
                      children: [
                        //  const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.green.shade100,
                            child: ClipOval(
                              child: Image.network(
                                'https://icones.pro/wp-content/uploads/2022/07/icone-crayon-vert.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        // const SizedBox(width: 20),
                        const Text(
                          'Profile',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: Center(
                child: GestureDetector(
                  onTap: () async {
                    boxStroge.write('isLogedIn', false);
                    boxStroge.remove('token');
                    boxStroge.remove('phone');
                    boxStroge.remove('role');
                    await FirebaseAuth.instance.signOut();
                    Get.offAllNamed('/login');
                  },
                  child: CustomText(
                    text: 'Logout',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
