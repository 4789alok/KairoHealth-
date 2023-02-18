import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/screens/KairoMedical/Profile/Approval/approvelist.dart';
import 'package:kairohealth/screens/KairoMedical/Profile/editprofile.dart';
import 'package:kairohealth/widgets/custom_text.dart';

class MedicalProfilePage extends StatefulWidget {
  const MedicalProfilePage({super.key});

  @override
  State<MedicalProfilePage> createState() => _MedicalProfilePageState();
}

class _MedicalProfilePageState extends State<MedicalProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Profile'),
        // centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      color: Colors.grey.shade300,
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade300,
                              radius: 50.0,
                              backgroundImage: const NetworkImage(
                                  'https://www.generation.org/wp-content/uploads/2022/07/placeholder-person.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                            ),
                            const Text(
                              'Aashis Kapoor',
                              style: TextStyle(
                                  fontSize: 18,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '9765433456,',
                                  style: TextStyle(
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                            ),
                            const Text(
                              'ashis921@gmail.com',
                              style: TextStyle(
                                  fontSize: 14,
                                  //  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const Text(
                              '10th B, main btm 1st layout bangaluru, karnataka',
                              style: TextStyle(
                                  fontSize: 14,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   padding: const EdgeInsets.all(20),
            //   margin: const EdgeInsets.all(10),
            //   //  height: 170,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     color: Colors.blueGrey.shade50,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Column(
            //     children: [
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           //  const SizedBox(width: 5.0),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Text(
            //                 'EXEPERIENCE:',
            //                 style: TextStyle(
            //                     fontSize: 16,
            //                     fontWeight: FontWeight.w500,
            //                     color: Colors.blueGrey.shade900),
            //               ),
            //               const Text(
            //                 '10 Years+',
            //                 style: TextStyle(
            //                     fontSize: 16,
            //                     // fontWeight: FontWeight.w500,
            //                     color: Colors.black),
            //               ),
            //             ],
            //           ),
            //           const SizedBox(
            //             height: 8,
            //           ),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               //const SizedBox(width: 5.0),
            //               Text(
            //                 'LANGUAGES:',
            //                 style: TextStyle(
            //                     fontSize: 16,
            //                     fontWeight: FontWeight.w500,
            //                     color: Colors.blueGrey.shade900),
            //               ),
            //               const Text(
            //                 'English, Hindi',
            //                 style: TextStyle(
            //                     fontSize: 16,
            //                     //  fontWeight: FontWeight.w500,
            //                     color: Colors.black),
            //               ),
            //             ],
            //           ),
            //           const SizedBox(
            //             height: 8,
            //           ),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               //const SizedBox(width: 5.0),
            //               Text(
            //                 'Type of',
            //                 style: TextStyle(
            //                     fontSize: 16,

//                     fontWeight: FontWeight.w500,
            //                     color: Colors.blueGrey.shade900),
            //               ),
            //               const Text(
            //                 'Surgeon',
            //                 style: TextStyle(
            //                     fontSize: 16,
            //                     //  fontWeight: FontWeight.w500,
            //                     color: Colors.black),
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),

            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Get.to(const EditProfileMedical());
              },
              child: Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(10),
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(30),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.5),
                  //     spreadRadius: 3,
                  //     blurRadius: 2,
                  //     offset: const Offset(0, 2),
                  //   ),
                  // ],
                ),
                child: const Center(
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
            //   onPressed: () {
            //     Get.to(const EditProfileMedical());
            //   },
            //   child: const Text(
            //     'Edit Profile',
            //     style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            //   ),
            // ),
            GestureDetector(
              onTap: () {
                Get.to(const ApproveListPage());
              },
              child: Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(10),
                width: 160,
                // decoration: BoxDecoration(
                //   // color: Colors.white,
                //   // borderRadius: BorderRadius.circular(30),
                //   // boxShadow: [
                //   //   BoxShadow(
                //   //     color: Colors.grey.withOpacity(0.5),
                //   //     spreadRadius: 3,
                //   //     blurRadius: 2,
                //   //     offset: const Offset(0, 2),
                //   //   ),
                //   // ],
                // ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: NetworkImage(
                          'https://static.vecteezy.com/system/resources/previews/010/147/759/original/tick-icon-accept-approve-sign-design-free-png.png'),
                      width: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Approve list',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Divider(
                height: 5,
                color: Colors.grey.shade600,
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
            ),
          ],
        ),
      ),
    );
  }
}
