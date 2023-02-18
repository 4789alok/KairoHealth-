import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kairohealth/screens/deshboard/Search_Screen/searchScreen.dart';
import 'package:kairohealth/screens/lab_test/CuratedPakage/curatedpakages.dart';
import 'package:kairohealth/data/constant.dart';
import 'package:kairohealth/screens/lab_test/controller/lab_test_controller.dart';
import 'package:kairohealth/widgets/banner.dart';

import '../Upload_Image/upload_imagepage.dart';

class LabTestPage extends GetView<LabTestController> {
  // File? image;

  LabTestPage({super.key}) {
    controller.hitApi();
  }

  Future pickImage(ImageSource source) async {
    try {
      await ImagePicker().pickImage(source: source);
      if (controller.image == null) return;

      final imageTemporary = File(controller.image!.value.path);
      controller.image?.value = imageTemporary;
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.zero,
            ),
            Text(
              'Sample collection',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(height: 35),
            // Row(
            //   children: [
            //     const SizedBox(width: 15),
            //     const Image(
            //       image: AssetImage('./images/health.png'),
            //       height: 30,
            //       width: 30,
            //     ),
            //     // const Icon(
            //     //   Icons.location_on,
            //     //   color: Colors.green,
            //     // ),
            //     const SizedBox(width: 15),
            //     Column(
            //       children: [
            //         const Text(
            //           'Sample collection address',
            //           style:
            //               TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            //         ),
            //         Row(
            //           children: const [
            //             Text(
            //               'BANGALORE,562900',
            //               style: TextStyle(
            //                   fontSize: 15, fontWeight: FontWeight.bold),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //     const Icon(
            //       Icons.keyboard_arrow_down_rounded,
            //       color: Color.fromARGB(255, 50, 173, 56),
            //       size: 25,
            //     ),
            //     const SizedBox(width: 40),
            //     IconButton(
            //       icon: const Icon(
            //         Icons.shopping_cart_rounded,
            //       ),

//       onPressed: () => print("open notification"),
            //     ),
            //     IconButton(
            //       icon: const Icon(
            //         Icons.person,
            //       ),
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => const EditProfilePage(),
            //           ),
            //         );
            //       },
            //     ),
            //   ],
            // ),
            const SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const SearchScreen()),
                  ),
                );
              },
              child: Container(
                height: 56,
                //color: Colors.blue.shade50,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    Text("'Search tests & packages'")
                  ],
                ),
                // height: 40,
                // width: 220,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(3.0),
            ),
            bannerSlider(controller.bannerList, context),

            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              // height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Image(
                        image: NetworkImage(
                            'https://cdn.shopify.com/s/files/1/0318/9771/4819/files/upload.png?v=3884782781120237394'),
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Upload Prescription',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Place order with Prescription',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/uploadImage', arguments: [
                            {
                              'route': 'prescription',
                            }
                          ]);
                        },
                        child: Container(
                          color: Colors.yellow.shade800,
                          padding: const EdgeInsets.all(6),
                          child: const Text(
                            'UPLOAD',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                //const SizedBox(width: 20),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'CLINICALLY CURATED PACKAGES',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 20.0),
                // GestureDetector(
                //   onTap: () {
                //     // Get.to(CuratedPakages());
                //   },
                //   child: Text(
                //     'VIEW ALL',
                //     style: TextStyle(
                //         fontSize: 15,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.amber.shade900),
                //   ),
                // ),
              ],
            ),
            const SizedBox(height: 20),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              // padding: const EdgeInsets.all(10.0),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blue.shade200),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  const Color.fromARGB(255, 231, 226, 226),
                              child: ClipOval(
                                child: Image(
                                  image:
                                      NetworkImage(listcurated[index]['image']),
                                  height: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Center(
                              child: Text(
                                listcurated[index]['title'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              itemCount: 3,
            ),
            // const SizedBox(height: 20.0),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(primary: Colors.white),
            //   onPressed: () {
            //     showModalBottomSheet(
            //       context: context,
            //       elevation: 0.0,
            //       isScrollControlled: true,
            //       shape: const RoundedRectangleBorder(
            //         borderRadius: BorderRadius.vertical(
            //           top: Radius.circular(20),
            //         ),
            //       ),
            //       builder: (context) => Center(
            //         child: Column(
            //           children: [
            //             const SizedBox(height: 50),
            //             Row(
            //               children: const [
            //                 SizedBox(width: 20),
            //                 Text(
            //                   'HOW IT WORKS',
            //                   style: TextStyle(
            //                       fontSize: 20, fontWeight: FontWeight.bold),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 8,
            //             ),
            //             Row(
            //               children: [
            //                 const Padding(
            //                   padding: EdgeInsets.all(16.0),
            //                   child: Image(
            //                     image: NetworkImage(
            //                         'https://cdn1.iconfinder.com/data/icons/education-vol-3-1/64/101-512.png'),
            //                     height: 50,
            //                   ),
            //                 ),
            //                 Column(
            //                   children: [
            //                     Row(
            //                       children: const [
            //                         Text(
            //                           'Book Online',
            //                           style: TextStyle(
            //                               fontSize: 17,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ],
            //                     ),
            //                     const SizedBox(height: 10.0),
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.center,
            //                       children: [
            //                         const Text(
            //                           'Select a test or package and book',
            //                           style: TextStyle(
            //                               fontSize: 15,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                         //  SizedBox(width: 15),
            //                         const Text(
            //                           'appointment on Apollo 24/7.',
            //                           style: TextStyle(
            //                               fontSize: 15,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ],
            //                     ),
            //                   ],
            //                 )
            //               ],
            //             ),
            //             const SizedBox(height: 50),
            //             Row(
            //               children: [
            //                 const SizedBox(width: 20),
            //                 const Image(
            //                   image: NetworkImage(
            //                       'https://optimists.in/health-hub/wp-content/uploads/2021/04/two-testtubes.png'),
            //                   height: 50,
            //                   width: 50,
            //                 ),
            //                 Column(
            //                   children: [
            //                     Row(
            //                       children: const [
            //                         Text(
            //                           'Home Sample Collection',
            //                           style: TextStyle(
            //                               fontSize: 17,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ],
            //                     ),
            //                     const SizedBox(height: 10.0),
            //                     Row(
            //                       children: const [
            //                         SizedBox(width: 50),
            //                         Text(
            //                           'Certified Apollo Agent visits your home',
            //                           style: TextStyle(
            //                               fontSize: 15,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ],
            //                     ),
            //                     Row(
            //                       children: const [
            //                         SizedBox(width: 50),
            //                         Text(
            //                           'sample collection at selected slot time.',
            //                           style: TextStyle(
            //                               fontSize: 15,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ],
            //                     ),
            //                   ],
            //                 )
            //               ],
            //             ),
            //             const SizedBox(height: 50),
            //             Row(
            //               children: [
            //                 const SizedBox(width: 20),
            //                 const Image(
            //                   image: NetworkImage(
            //                       'https://img.favpng.com/6/17/2/regulatory-compliance-enforcement-safety-clip-art-png-favpng-CFKFvAqPc0NCjJmCaF70iP0aY_t.jpg'),
            //                   height: 50,
            //                   width: 50,
            //                 ),
            //                 Column(
            //                   children: [
            //                     Row(
            //                       children: const [
            //                         Text(
            //                           'Fast & Accurate Reports',
            //                           style: TextStyle(
            //                               fontSize: 17,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ],
            //                     ),
            //                     const SizedBox(height: 10.0),
            //                     Row(
            //                       children: const [
            //                         SizedBox(width: 50),
            //                         Text(
            //                           'Get reports in 12 to 24 hours. View or',
            //                           style: TextStyle(
            //                               fontSize: 15,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ],
            //                     ),
            //                     Row(
            //                       children: const [
            //                         Text(
            //                           'download on app anytime.',
            //                           style: TextStyle(
            //                               fontSize: 15,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ],
            //                     ),
            //                   ],
            //                 )
            //               ],
            //             ),
            //             const SizedBox(height: 50.0),
            //             ElevatedButton(
            //               onPressed: () => Navigator.pop(context),
            //               child: const Text(
            //                 'Close',
            //                 style: TextStyle(
            //                     fontSize: 20, fontWeight: FontWeight.bold),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     );
            //   },
            //   child: Container(
            //     alignment: Alignment.center,
            //     // margin: const EdgeInsets.all(10),
            //     // height: 70,
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(5.0),
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.grey.withOpacity(0.5),
            //           spreadRadius: 3,
            //           blurRadius: 5,
            //           offset: const Offset(0, 2),
            //         ),
            //       ],
            //     ),
            //     child: Column(
            //       children: [
            //         // const SizedBox(height: 10),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: const [
            //             Image(
            //               image: NetworkImage(
            //                   'https://testsigma.com/blog/wp-content/uploads/Requirement-Traceability-Matrix-Regression-Testing-1.png'),
            //               height: 50,
            //               width: 50,
            //             ),
            //             Text(
            //               '3 simple steps to get a lab test done',
            //               style: TextStyle(
            //                 fontSize: 15,
            //                 fontWeight: FontWeight.bold,
            //                 color: Color.fromARGB(255, 126, 109, 109),
            //               ),
            //             ),
            //             Icon(
            //               Icons.arrow_forward_ios_rounded,
            //               color: Colors.black,
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            //  const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'WOMAN CARE',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            //  const SizedBox(height: 30),
            Container(
              height: 120,
              child: ListView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: listWomen.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.blue.shade50),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor:
                                const Color.fromARGB(255, 231, 226, 226),
                            child: ClipOval(
                              child: Image(
                                image: NetworkImage(listWomen[index]['image']),
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            listWomen[index]['title'],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              // height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  //  const SizedBox(height: 15),
                  const Text(
                    'Unable to find the right test?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 90),
                      Text(
                        'Request a call back',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber.shade900),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.timer,
                        color: Colors.amber.shade900,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> listWomen = [
  {
    'image':
        'https://cdn.pixabay.com/photo/2016/11/26/20/47/red-blood-cell-1861640__340.png',
    'title': 'Blood',
  },
  {
    'image':
        'https://cdn-ammek.nitrocdn.com/jLohyQvDJlapGWoPiokCKfklITHVXVUb/assets/static/optimized/rev-30f21b1/wp-content/uploads/2021/07/Pregnant-Woman.png',
    'title': 'Pregnancy',
  },
  {
    'image':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Gray72-en.svg/400px-Gray72-en.svg.png',
    'title': 'Iron',
  },
  {
    'image':
        'https://www.forestessentialsindia.com/blog/wp-content/uploads/2020/02/vitamins-E-.png',
    'title': 'Vitamin',
  },
];
