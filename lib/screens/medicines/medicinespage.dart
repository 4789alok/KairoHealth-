import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/Upload_Image/upload_imagepage.dart';
import 'package:kairohealth/screens/medicines/controller/medicine_controller.dart';
import 'package:kairohealth/screens/medicines/myorders/myorders.dart';
import 'package:kairohealth/widgets/banner.dart';

import '../deshboard/Search_Screen/searchScreen.dart';

class MedicinesPage extends GetView<MedicineController> {
  File? image;

  MedicinesPage({super.key}) {
    controller.hitApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: GestureDetector(
          // onTap: () {
          //   Get.to(const AdressDetail());
          // },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.zero,
              ),
              Text(
                'Deliver to Shivash',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'BANGALORE,562300',
                style: TextStyle(
                    fontSize: 12.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () => print("open shopping"),
          ),
          IconButton(
            icon: const Icon(
              Icons.person,
            ),
            onPressed: () => print("open person"),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const SearchScreen())));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 9),
                      // height: 56,
                      //color: Colors.blue.shade50,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                          Text("'Search for Medicines,Doctors,Lab Tests'")
                        ],
                      ),

                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          border: Border.all(color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4))),
                      // height: 40,
                      // width: 220,
                    ),
                  ),
                  bannerSlider(controller.bannerList, context),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    // height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        //   const SizedBox(height: ),
                        Row(
                          children: [
                            const Image(
                              image: NetworkImage(
                                  'https://purepng.com/public/uploads/large/medicines-in-first-aid-box-xn7.png'),
                              height: 90,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Looking for an item you bought\npreviously?',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.lightBlue.shade900),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 7, vertical: 3),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 5.0),
                                          Text(
                                            'Trovao',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    Colors.lightBlue.shade900),
                                          ),
                                          Text(
                                            'Tablet',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    Colors.lightBlue.shade900),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                        borderRadius: BorderRadius.circular(5),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(6),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 7, vertical: 3),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            const SizedBox(height: 5.0),
                                            Text(
                                              'Dapaconi',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors
                                                      .lightBlue.shade900),
                                            ),
                                            Text(
                                              'c5 Tab...',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors
                                                      .lightBlue.shade900),
                                            ),
                                          ],
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                        borderRadius: BorderRadius.circular(5),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                    const SizedBox(width: 4.0),
                                    Row(
                                      children: const [
                                        Text(
                                          'Buy Again',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 255, 114, 7),
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color:
                                              Color.fromARGB(255, 255, 114, 7),
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1.5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyOrdersPage(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            margin: const EdgeInsets.all(14),
                            //  height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 39, 70, 95),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0.0,
                                  blurRadius: 0.0,
                                  offset: const Offset(2, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Image(
                                      image: NetworkImage(
                                          'https://cdn.iconscout.com/icon/premium/png-256-thumb/medicine-2483045-2080624.png'),
                                      height: 35,
                                    ),
                                    Padding(padding: EdgeInsets.all(10.0)),
                                    Text(
                                      'My Orders',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                // SizedBox(width: 100),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        //  const SizedBox(height: 14.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              Icons.access_alarm_outlined,
                              size: 30,
                              color: Colors.green,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Text(
                                  'Get the order delivered today before 9:00 pm if you order before 3:00 pm.',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: const [
                      //    SizedBox(width: 25),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 8),
                        child: Image(
                          image: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/0/315.png'),
                          height: 30,
                        ),
                      ),
                      // Padding(padding: EdgeInsets.all(5.0)),
                      Text(
                        'Upload Prescription',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  // const SizedBox(height: 20),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/uploadImage', arguments: [
                        {
                          'route': 'prescription',
                        }
                      ]);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                      //  height: 180,
                      // width: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.red.shade300,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue.shade200),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor:
                                const Color.fromARGB(255, 231, 226, 226),
                            child: ClipOval(
                              child: Icon(
                                Icons.file_upload_outlined,
                                color: Colors.blue.shade900,
                                size: 50,
                              ),
                            ),
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 10),
                              Text(
                                'Upload',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                'Image',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Container(
                  //   //height: 180,
                  //   //width: 120,
                  //   decoration: BoxDecoration(
                  //     color: Colors.pink.shade300,
                  //     borderRadius: BorderRadius.circular(10),
                  //     border: Border.all(color: Colors.blue.shade200),
                  //   ),
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  //   margin: EdgeInsets.only(bottom: 8),
                  //   child: Column(
                  //     children: [
                  //       const SizedBox(height: 15),
                  //       CircleAvatar(
                  //         radius: 40,
                  //         backgroundColor:
                  //             const Color.fromARGB(255, 231, 226, 226),
                  //         child: ClipOval(
                  //           // child: Image.network(
                  //           //   'https://lussier.co/themes/custom/ldp/assets/src/images/Broker_Business.png',
                  //           //   width: 50,
                  //           //   height: 50,
                  //           //   fit: BoxFit.cover,
                  //           // ),
                  //           child: ElevatedButton(
                  //             style: ElevatedButton.styleFrom(
                  //               backgroundColor: const Color.fromARGB(
                  //                   255, 231, 226, 226),
                  //             ),
                  //             child: Icon(
                  //               Icons.camera_alt_outlined,
                  //               color: Colors.blue.shade900,
                  //               size: 50,
                  //             ),
                  //             onPressed: () =>
                  //                 pickImage(ImageSource.camera),
                  //           ),
                  //         ),
                  //       ),
                  //       Column(
                  //         children: const [
                  //           SizedBox(height: 10),
                  //           Text(
                  //             'Take',
                  //             style: TextStyle(
                  //                 fontSize: 17,
                  //                 fontWeight: FontWeight.bold,
                  //                 color: Colors.white),
                  //           ),
                  //           Text(
                  //             'Photo',
                  //             style: TextStyle(
                  //                 fontSize: 17,
                  //                 fontWeight: FontWeight.bold,
                  //                 color: Colors.white),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  //   margin: EdgeInsets.only(bottom: 8),
                  //   decoration: BoxDecoration(
                  //     color: Colors.purple.shade300,
                  //     borderRadius: BorderRadius.circular(10),
                  //     border: Border.all(color: Colors.blue.shade200),
                  //   ),
                  //   child: Column(
                  //     children: [
                  //       const SizedBox(height: 15),
                  //       CircleAvatar(
                  //         radius: 40,
                  //         backgroundColor:
                  //             const Color.fromARGB(255, 231, 226, 226),
                  //         child: ClipOval(
                  //           child: Icon(
                  //             Icons.question_answer_outlined,
                  //             color: Colors.blue.shade900,
                  //             size: 50,
                  //           ),
                  //         ),
                  //       ),
                  //       Column(
                  //         children: const [
                  //           SizedBox(height: 10),
                  //           Text(
                  //             'KAIRO',
                  //             style: TextStyle(
                  //                 fontSize: 17,
                  //                 fontWeight: FontWeight.bold,
                  //                 color: Colors.white),
                  //           ),
                  //           Text(
                  //             'Prescription',
                  //             style: TextStyle(
                  //                 fontSize: 16,
                  //                 fontWeight: FontWeight.bold,
                  //                 color: Colors.white),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
