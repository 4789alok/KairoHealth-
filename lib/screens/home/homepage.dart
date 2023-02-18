import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/home/controller/home_controller.dart';
import 'package:kairohealth/screens/medicines/medicinespage.dart';
import 'package:kairohealth/screens/notifications/notifications.dart';
import 'package:kairohealth/screens/medicines/myorders/yourcart.dart';
import 'package:kairohealth/widgets/banner.dart';
import 'package:kairohealth/widgets/item_disease.dart';
import 'package:kairohealth/widgets/item_doctor.dart';
import '../deshboard/Search_Screen/searchScreen.dart';

class HomePage extends GetView<HomeController> {
  HomePage({super.key}) {
    controller.hitApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // drawer: Drawer(
      //   backgroundColor: Colors.blue.shade100,
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       UserAccountsDrawerHeader(
      //         accountName: const Text(
      //           'Kalash Bansal',
      //           style: TextStyle(
      //               fontSize: 15,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black),
      //         ),
      //         accountEmail: const Text(
      //           'Kairohealth1@gmail.com',
      //           style: TextStyle(
      //               fontSize: 15,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black),
      //         ),
      //         currentAccountPicture: CircleAvatar(
      //           radius: 40,
      //           backgroundColor: const Color.fromARGB(255, 231, 226, 226),
      //           child: ClipOval(
      //             child: Image.network(
      //               'https://lussier.co/themes/custom/ldp/assets/src/images/Broker_Business.png',
      //               width: 90,
      //               height: 90,
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //         decoration: BoxDecoration(
      //           color: Colors.blue.shade100,
      //         ),
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           // Navigator.push(
      //           //   context,
      //           //   MaterialPageRoute(
      //           //     builder: (context) => const AddMemberShipPage(),
      //           //   ),
      //           // );
      //         },
      //         child: const ListTile(
      //           // leading: Icon(
      //           //   Icons.plus_one,
      //           //   color: Colors.white,
      //           // ),
      //           title: Text(
      //             'KAIRO CARE SERVICE',
      //             style: TextStyle(
      //                 color: Colors.black,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 20),
      //           ),
      //         ),
      //       ),
      //       const Divider(
      //         thickness: 1.5,
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           Get.toNamed('/consultPAge');
      //         },
      //         child: const ListTile(
      //           leading: Icon(
      //             Icons.collections_outlined,
      //             color: Colors.black,
      //           ),
      //           title: Text(
      //             'Consult Now',
      //             style: TextStyle(color: Colors.black),
      //           ),
      //         ),
      //       ),
      //       const Divider(
      //         thickness: 1.5,
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           Get.toNamed('/labTestPage');
      //         },
      //         child: const ListTile(
      //           leading: Icon(Icons.library_books, color: Colors.black),
      //           title: Text(
      //             'Order Lab Test',
      //             style: TextStyle(color: Colors.black),
      //           ),
      //         ),
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           Get.to(MedicinesPage());
      //         },
      //         child: const ListTile(
      //           leading: Icon(Icons.medication_rounded, color: Colors.black),
      //           title: Text(
      //             'Order Medicines',
      //             style: TextStyle(color: Colors.black),
      //           ),
      //         ),
      //       ),
      //       // GestureDetector(
      //       //   onTap: () {
      //       //     Navigator.push(
      //       //       context,
      //       //       MaterialPageRoute(
      //       //         builder: (context) => const OneMembershipPage(),
      //       //       ),
      //       //     );
      //       //   },
      //       //   child: const ListTile(
      //       //     leading: Icon(Icons.person, color: Colors.black),
      //       //     title: Text(
      //       //       'Buy Subscriptions',
      //       //       style: TextStyle(color: Colors.black),
      //       //     ),
      //       //   ),
      //       // ),
      //       const Divider(
      //         thickness: 1.5,
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => const NotificationsPage(),
      //             ),
      //           );
      //         },
      //         child: ListTile(
      //           leading:
      //               const Icon(Icons.notification_add, color: Colors.black),
      //           title: const Text(
      //             'My Notification',
      //             style: TextStyle(color: Colors.black),
      //           ),
      //           trailing: Container(
      //             color: Colors.red,
      //             width: 20,
      //             height: 20,
      //             child: const Center(
      //               child: Text(
      //                 '8',
      //                 style: TextStyle(color: Colors.white, fontSize: 12),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //       const Divider(
      //         thickness: 1.5,
      //       ),
      //       const ListTile(
      //         // leading: Icon(Icons.favorite),
      //         title: Text(
      //           'ABOUT',
      //           style: TextStyle(
      //               color: Colors.black,
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           // Navigator.push(
      //           //   context,
      //           //   MaterialPageRoute(
      //           //     builder: (context) => const AccountPage(),
      //           //   ),
      //           // );
      //         },
      //         child: const ListTile(
      //           leading: Icon(Icons.help, color: Colors.black),
      //           title: Text(
      //             'Help and Support',
      //             style: TextStyle(color: Colors.black),
      //           ),
      //         ),
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           // Navigator.push(
      //           //   context,
      //           //   MaterialPageRoute(
      //           //     builder: (context) => const AccountPage(),
      //           //   ),
      //           // );
      //         },
      //         child: const ListTile(
      //           leading: Icon(Icons.adobe_outlined, color: Colors.black),
      //           title: Text(
      //             'About Kairo',
      //             style: TextStyle(color: Colors.black),
      //           ),
      //         ),
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           // Navigator.push(
      //           //   context,
      //           //   MaterialPageRoute(
      //           //     builder: (context) => const AccountPage(),
      //           //   ),
      //           // );
      //         },
      //         child: const ListTile(
      //           leading: Icon(Icons.adb_sharp, color: Colors.black),
      //           title: Text(
      //             'Terms and Conditions',
      //             style: TextStyle(color: Colors.black),
      //           ),
      //         ),
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           // Navigator.push(
      //           //   context,
      //           //   MaterialPageRoute(
      //           //     builder: (context) => const AccountPage(),
      //           //   ),
      //           // );
      //         },
      //         child: const ListTile(
      //           leading: Icon(Icons.policy, color: Colors.black),
      //           title: Text(
      //             'Privacy Policy',
      //             style: TextStyle(color: Colors.black),
      //           ),
      //         ),
      //       ),
      //       const ListTile(
      //         // leading: Icon(Icons.favorite),
      //         title: Text(
      //           'SETTINGS',
      //           style: TextStyle(
      //               color: Colors.black,
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           // Navigator.push(
      //           //   context,
      //           //   MaterialPageRoute(
      //           //     builder: (context) => const AccountPage(),
      //           //   ),
      //           // );
      //         },
      //         child: const ListTile(
      //           leading: Icon(Icons.settings, color: Colors.black),
      //           title: Text(
      //             'Settings',
      //             style: TextStyle(color: Colors.black),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        // title: Row(
        //   children: const <Widget>[
        //     Padding(
        //       padding: EdgeInsets.zero,
        //     ),
        //     Text(
        //       'Hi Shivash',
        //       style: TextStyle(
        //         fontStyle: FontStyle.italic,
        //         fontWeight: FontWeight.bold,
        //         color: Color(0xffF08000),
        //       ),
        //     ),
        //     Icon(
        //       Icons.keyboard_arrow_down_rounded,
        //       color: Colors.green,
        //     ),
        //   ],
        // ),
        actions: <Widget>[
          // IconButton(
          // icon: const Icon(
          //   Icons.shopping_cart_rounded,
          // ),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const CartPage(),
          //       ),
          //     );
          //   },
          // ),
          IconButton(
            icon: const Icon(
              Icons.notifications,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationsPage(),
                ),
              );
            },
          ),
          // IconButton(
          //   icon: const Icon(
          //     Icons.person,
          //   ),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const EditProfilePage(),
          //       ),
          //     );
          //   },
          // ),
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
                    const SizedBox(height: 5.0),
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
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        child: Row(
                          children: const [
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
                    const Divider(
                      thickness: 1,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 53, 137, 183),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const Padding(padding: EdgeInsets.all(3.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6.0),
                                // width: 120,
                                child: Center(
                                  child: Text(
                                    'Express Delivery',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 61, 199, 132),
                                  border:
                                      Border.all(color: Colors.green, width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                              //  const SizedBox(width: 70),
                              const Text(
                                'through Kairohealth Pharmacy',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.network(
                                'https://cdn3d.iconscout.com/3d/premium/thumb/medicine-6867931-5607376.png',
                                height: 50,
                              ),
                              const Text(
                                'Buy Medicines and Essentials',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const Padding(padding: EdgeInsets.all(3.0)),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 20,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.all(4),
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(5),
                              shape: BoxShape.rectangle,
                            ),
                            child: Row(
                              children: [
                                const Padding(padding: EdgeInsets.all(2.0)),
                                Icon(
                                  Icons.account_balance_wallet_rounded,
                                  size: 30,
                                  color: Colors.lightBlue.shade900,
                                ),
                                const Padding(padding: EdgeInsets.all(3.0)),
                                Text(
                                  'Get 100% Genuine Medicines',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.lightBlue.shade900),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(padding: EdgeInsets.all(5.0)),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/consultPAge');
                          },
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(15.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: const [
                                    Image(
                                      image: NetworkImage(
                                          'https://www.sehat.com/sht-new-img/new/doctor.png'),
                                      height: 50,
                                    ),
                                    Text(
                                      'Consult a Doctor',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 16,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 290,
                                  decoration: BoxDecoration(
                                    color: Colors.teal.shade100,
                                    border: Border.all(
                                        color: Colors.teal.shade100, width: 1),
                                    borderRadius: BorderRadius.circular(5),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Column(
                                    children: [
                                      const Padding(padding: EdgeInsets.all(5)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Image(
                                            image: NetworkImage(
                                                'https://play-lh.googleusercontent.com/mjNCSu9Aepjf-qLRZDdaodaH4rVu7utwpzZDmiuBxe_NpFTyYJgRxm-IRh-wRXqxpw'),
                                            height: 30,
                                          ),
                                          Text(
                                            'Video & Hospital Consult',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.teal.shade300),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      margin: const EdgeInsets.only(left: 8, top: 6),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 8, bottom: 4, left: 2),
                              child: Text(
                                'Ask Kairohealth',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Feeling unwell? Tell us your systoms for a quick assessment and get appropriate care.',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ]),
                    ),
                    //  const SizedBox(height: 20),

                    const SizedBox(height: 20),
                    controller.diseaseList.isEmpty
                        ? const SizedBox.shrink()
                        : SizedBox(
                            height: 110,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              scrollDirection: Axis.horizontal,
                              //  physics: const NeverScrollableScrollPhysics(),
                              // scrollDirection: Axis.horizontal,
                              // shrinkWrap: true,
                              itemCount: controller.diseaseList.length,
                              itemBuilder: (context, index) {
                                return ItemDisease(
                                    image: controller.diseaseList[index].photo
                                        .toString(),
                                    title: controller.diseaseList[index].disease
                                        .toString());
                              },
                            ),
                          ),
                    //f   const SizedBox(height: 20),
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //       textStyle: const TextStyle(fontSize: 20),
                    //       primary: Colors.teal.shade300),
                    //   onPressed: () {
                    //     // buttonClick();
                    //   },
                    //   child: Container(
                    //     height: 50,
                    //     width: 330,
                    //     alignment: Alignment.center,
                    //     child: const Text(
                    //       "Any other symptoms?",
                    //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //     ),
                    //   ),
                    // ),
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    bannerSlider(controller.bannerList, context),
                    // Center(
                    //   child: Container(
                    //     height: MediaQuery.of(context).size.height / 4,
                    //     padding: const EdgeInsets.all(10.0),
                    //     child: CarouselSlider(
                    //       options:
                    //           CarouselOptions(height: 400.0, autoPlay: true),
                    //       items: listscroll.map(
                    //         (i) {
                    //           return Builder(
                    //             builder: (BuildContext context) {
                    //               return Container(
                    //                 width: MediaQuery.of(context).size.width,
                    //                 margin: const EdgeInsets.symmetric(
                    //                     horizontal: 10.0),
                    //                 decoration: BoxDecoration(
                    //                   border: Border.all(
                    //                       color: Colors.blue.shade50, width: 1),
                    //                   borderRadius: BorderRadius.circular(15),
                    //                   shape: BoxShape.rectangle,
                    //                   // shape: BoxShape.circle,
                    //                   // color: Colors.blue.shade100,
                    //                   image: DecorationImage(
                    //                     fit: BoxFit.fill,
                    //                     image: NetworkImage(i),
                    //                   ),
                    //                   color: Colors.amber,
                    //                 ),
                    //               );
                    //             },
                    //           );
                    //         },
                    //       ).toList(),
                    //     ),
                    //   ),
                    // ),
                    //   const SizedBox(height: 10),
                    Row(
                      children: const [
                        SizedBox(width: 20),
                        Text(
                          'Book Doctor Consult',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    // const SizedBox(height: 10),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     // const SizedBox(width: 20),
                    //     Container(
                    //       margin: EdgeInsets.all(6),
                    //       padding: EdgeInsets.all(12),
                    //       decoration: BoxDecoration(
                    //         border: Border.all(color: Colors.grey, width: 1),
                    //         borderRadius: BorderRadius.circular(5.0),
                    //         shape: BoxShape.rectangle,
                    //       ),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //         children: const [
                    //           Image(
                    //             image: NetworkImage(
                    //                 'https://cdn-icons-png.flaticon.com/512/3309/3309748.png'),
                    //             height: 35,
                    //             width: 35,
                    //           ),
                    //           Text(
                    //             'Hospital Visit',
                    //             style: TextStyle(
                    //                 fontSize: 15, fontWeight: FontWeight.bold),
                    //           ),
                    //           Icon(Icons.arrow_forward_ios_rounded)
                    //         ],
                    //       ),
                    //     ),

                    //     Container(
                    //       margin: EdgeInsets.all(6),
                    //       padding: EdgeInsets.all(10),
                    //       decoration: BoxDecoration(
                    //         border: Border.all(color: Colors.grey, width: 1),
                    //         borderRadius: BorderRadius.circular(5.0),
                    //         shape: BoxShape.rectangle,
                    //       ),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //         children: const [
                    //           Image(
                    //             image: NetworkImage(
                    //                 'https://www.inclinic.vc/wp-content/uploads/2022/01/Accessibility.webp'),
                    //             height: 40,
                    //           ),
                    //           Text(
                    //             'Video Consult',
                    //             style: TextStyle(
                    //                 fontSize: 15, fontWeight: FontWeight.bold),
                    //           ),
                    //           Icon(Icons.arrow_forward_ios_rounded)
                    //         ],
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    // Row(
                    //   children: const [
                    //     SizedBox(width: 20),
                    //     Text(
                    //       'Services For You',
                    //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 10),
                    // Row(
                    //   children: [
                    //     const SizedBox(width: 20),
                    //     Container(
                    //       height: 70,
                    //       width: 170,
                    //       decoration: BoxDecoration(
                    //         border: Border.all(color: Colors.grey, width: 1),
                    //         borderRadius: BorderRadius.circular(5.0),
                    //         shape: BoxShape.rectangle,
                    //       ),
                    //       child: Column(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: [
                    //           Row(
                    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //             children: [
                    //               const Image(
                    //                 image: NetworkImage(
                    //                     'https://cdn-icons-png.flaticon.com/512/3309/3309748.png'),
                    //                 height: 35,
                    //                 width: 35,
                    //               ),
                    //               Column(
                    //                 children: const [
                    //                   Text(
                    //                     'Book Covid',
                    //                     style: TextStyle(
                    //                         fontSize: 15, fontWeight: FontWeight.bold),
                    //                   ),
                    //                   Text(
                    //                     'Vaccination',
                    //                     style: TextStyle(
                    //                         fontSize: 15, fontWeight: FontWeight.bold),
                    //                   ),
                    //                 ],
                    //               ),
                    //               const Icon(Icons.arrow_forward_ios_rounded),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //     const Padding(
                    //       padding: EdgeInsets.all(2.0),
                    //     ),
                    //     Container(
                    //       height: 70,
                    //       width: 170,
                    //       decoration: BoxDecoration(
                    //         border: Border.all(color: Colors.grey, width: 1),
                    //         borderRadius: BorderRadius.circular(5.0),
                    //         shape: BoxShape.rectangle,
                    //       ),
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           Row(
                    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //             children: [
                    //               const Image(
                    //                 image: NetworkImage(
                    //                     'https://www.inclinic.vc/wp-content/uploads/2022/01/Accessibility.webp'),
                    //                 height: 40,
                    //                 width: 40,
                    //               ),
                    //               Column(
                    //                 children: const [
                    //                   Text(
                    //                     'Manage',
                    //                     style: TextStyle(
                    //                         fontSize: 15, fontWeight: FontWeight.bold),
                    //                   ),
                    //                   Text(
                    //                     'Diabetes',
                    //                     style: TextStyle(
                    //                         fontSize: 15, fontWeight: FontWeight.bold),
                    //                   ),
                    //                 ],
                    //               ),
                    //               const Icon(Icons.arrow_forward_ios_rounded),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    controller.doctorList.isEmpty
                        ? const SizedBox.shrink()
                        : Container(
                            margin: const EdgeInsets.all(12),
                            height: 270,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return ItemDoctor(
                                    data: controller.doctorList[index]);
                              },
                              itemCount: controller.doctorList.length,
                            ),
                          ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        // const ClipRRect(
                        //   borderRadius: BorderRadius.only(
                        //     topLeft: Radius.circular(14.0),
                        //     topRight: Radius.circular(14.0),
                        //   ),
                        //   child: Image(
                        //       image: NetworkImage(
                        //           'https://www.emmys.com/sites/default/files/photos-article/logo-mahm-istock-1-1200x500.jpg')),
                        // ),
                        // const SizedBox(height: 20),
                        // Row(
                        //   children: [
                        //     const SizedBox(width: 15),
                        //     Text(
                        //       'HEALTH BLOG',
                        //       style: TextStyle(
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.bold,
                        //           color: Colors.lightBlue.shade900),
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(height: 15),
                        // Column(
                        //   children: [
                        //     Row(
                        //       children: const [
                        //         SizedBox(width: 15),
                        //         Text(
                        //           'Explore healthcare content created every day by our',
                        //           style: TextStyle(
                        //               fontSize: 15,
                        //               color: Color.fromARGB(255, 133, 122, 122),
                        //               fontWeight: FontWeight.bold),
                        //         ),
                        //       ],
                        //     ),
                        //     Row(
                        //       children: const [
                        //         SizedBox(width: 15),
                        //         Text(
                        //           'experts.',
                        //           style: TextStyle(
                        //               fontSize: 15,
                        //               color: Color.fromARGB(255, 133, 122, 122),
                        //               fontWeight: FontWeight.bold),
                        //         ),
                        //       ],
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(height: 10),
                        // Container(
                        //   alignment: Alignment.center,
                        //   margin: const EdgeInsets.all(20),
                        //   height: 60,
                        //   width: double.infinity,
                        //   decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.circular(30),
                        //     boxShadow: [
                        //       BoxShadow(
                        //         color: Colors.grey.withOpacity(0.5),
                        //         spreadRadius: 2,
                        //         blurRadius: 1,
                        //         offset: const Offset(2, 2),
                        //       ),
                        //     ],
                        //   ),
                        //   child: Row(
                        //     children: [
                        //       const SizedBox(width: 30),
                        //       Icon(
                        //         Icons.chat_rounded,
                        //         color: Colors.amber.shade900,
                        //         size: 35,
                        //       ),
                        //       const Padding(
                        //         padding: EdgeInsets.all(8.0),
                        //       ),
                        //       Text(
                        //         'Read the latest articles',
                        //         style: TextStyle(
                        //             fontSize: 17,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.amber.shade900),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        const Divider(
                          thickness: 1,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'You can also',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        // Container(
                        //   alignment: Alignment.center,
                        //   margin: const EdgeInsets.all(20),
                        //   height: 60,
                        //   width: double.infinity,
                        //   decoration: BoxDecoration(
                        //     color: const Color.fromARGB(255, 39, 70, 95),
                        //     borderRadius: BorderRadius.circular(15),
                        //     boxShadow: [
                        //       BoxShadow(
                        //         color: Colors.grey.withOpacity(0.5),
                        //         spreadRadius: 0,
                        //         blurRadius: 1,
                        //         offset: const Offset(2, 2),
                        //       ),
                        //     ],
                        //   ),
                        //   child: Row(
                        //     children: const [
                        //       SizedBox(width: 15),
                        //       Image(
                        //         image: NetworkImage(
                        //             'https://www.covidwar.karnataka.gov.in/assets/CoV19.png'),
                        //         height: 30,
                        //         width: 30,
                        //       ),
                        //       Padding(padding: EdgeInsets.all(8.0)),
                        //       Text(
                        //         'Check your risk level',
                        //         style: TextStyle(
                        //             fontSize: 17,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.white),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/consultPAge');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(14),
                            //  height: 60,
                            padding: const EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 39, 70, 95),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0.0,
                                  blurRadius: 1,
                                  offset: const Offset(2, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              children: const [
                                SizedBox(width: 10),
                                Image(
                                  image: NetworkImage(
                                      'https://www.bajajallianz.com/content/dam/bagic/corona-kavach-policy/corona-kavach-policy.png'),
                                  height: 40,
                                ),
                                Padding(padding: EdgeInsets.all(2.0)),
                                Text(
                                  'Explore the Kairo Kawach Services',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
      }),
    );
  }
}

final List<Map<String, dynamic>> cource = [
  {
    "masters":
        "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop",
  },
  {
    "masters":
        "https://img.freepik.com/free-photo/beautiful-young-female-doctor-looking-camera-office_1301-7807.jpg?w=2000",
  },
  {
    "masters":
        "https://media.istockphoto.com/id/177373093/photo/indian-male-doctor.jpg?s=612x612&w=0&k=20&c=5FkfKdCYERkAg65cQtdqeO_D0JMv6vrEdPw3mX1Lkfg=",
  },
];
final List<Map<String, dynamic>> listsymptoms = [
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/3954/3954126.png',
    'title': 'Cough',
  },
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/3781/3781954.png',
    'title': 'Fever',
  },
  {
    'image':
        'https://cdn.pixabay.com/photo/2020/10/10/18/27/woman-5643926_1280.png',
    'title': 'Headache',
  },
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/2746/2746593.png',
    'title': 'Sore throat',
  },
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/3954/3954126.png',
    'title': 'Cough',
  },
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/3781/3781954.png',
    'title': 'Fever',
  },
];
