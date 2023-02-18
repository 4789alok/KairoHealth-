import 'package:carousel_slider/carousel_slider.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/data/constant.dart';
import 'package:kairohealth/screens/KairoMedical/Listpatient/listpatient.dart';

class MedicalHomePage extends StatefulWidget {
  MedicalHomePage({super.key, this.title});
  final String? title;

  @override
  State<MedicalHomePage> createState() => _MedicalHomePageState();
}

class _MedicalHomePageState extends State<MedicalHomePage> {
  String uid = "";
  DatePickerController _controller = DatePickerController();
  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue.shade900,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                padding: const EdgeInsets.all(10.0),
                child: CarouselSlider(
                  options: CarouselOptions(height: 400.0, autoPlay: true),
                  items: listscroll.map(
                    (i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.shade50,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(16.0),
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(16.0),
                              ),
                              child: Image(
                                image: NetworkImage(
                                    'https://graphicsfamily.com/wp-content/uploads/edd/2022/04/Social-Media-Banner-Design-for-Health-and-Medical-Promotion-scaled.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
            // Container(
            //   height: 160,
            //   decoration: BoxDecoration(
            //     color: Colors.tealAccent.shade700,
            //     borderRadius: const BorderRadius.only(
            //       bottomLeft: Radius.circular(30),
            //       bottomRight: Radius.circular(30),
            //     ),
            //   ),
            //   child: Container(
            //     margin: const EdgeInsets.only(left: 30, bottom: 10),
            //     child: Row(
            //       children: [
            //         GestureDetector(
            //           onTap: () {},
            //           child: Container(
            //             margin: const EdgeInsets.only(bottom: 20),
            //             child: const ClipRRect(
            //               borderRadius: BorderRadius.only(
            //                 topLeft: Radius.circular(10.0),
            //                 topRight: Radius.circular(10.0),
            //                 bottomLeft: Radius.circular(10.0),
            //                 bottomRight: Radius.circular(10.0),
            //               ),
            //               child: Image(
            //                   image: NetworkImage(
            //                       'https://media.istockphoto.com/id/522404177/photo/pharmacy-chemist-woman-in-drugstore.jpg?s=612x612&w=0&k=20&c=7QL_wM164wwOjcxfxGUq13XRCA1puhYr997TiP23Bqg=')),
            //             ),
            //           ),
            //         ),
            //         Container(
            //           margin: const EdgeInsets.only(left: 20),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Container(
            //                 margin: const EdgeInsets.only(top: 20),
            //                 child: const Text(
            //                   'Aashis Kapoor',
            //                   style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 20,
            //                       fontWeight: FontWeight.w700),
            //                 ),
            //               ),
            //               Container(
            //                 margin: const EdgeInsets.only(top: 10),
            //                 child: const Text(
            //                   'Jamjam Medical Store',
            //                   style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 18,
            //                       fontWeight: FontWeight.w700),
            //                 ),
            //               ),
            //               Container(
            //                 margin: const EdgeInsets.only(top: 10),
            //                 child: const Text(
            //                   'Rating: 4.5',
            //                   style: TextStyle(
            //                       color: Colors.yellow,
            //                       fontSize: 18,
            //                       fontWeight: FontWeight.w700),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
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
            // Container(
            //   padding: const EdgeInsets.all(20),
            //   margin: const EdgeInsets.all(10),
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     color: Colors.blueGrey.shade50,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: const ClipRRect(
            //     borderRadius: BorderRadius.only(

//       topLeft: Radius.circular(16.0),
            //       topRight: Radius.circular(16.0),
            //       bottomLeft: Radius.circular(16.0),
            //       bottomRight: Radius.circular(16.0),
            //     ),
            //     child: Image(
            //       image: NetworkImage(
            //           'https://graphicsfamily.com/wp-content/uploads/edd/2022/04/Social-Media-Banner-Design-for-Health-and-Medical-Promotion-scaled.jpg'),
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            // ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Order :',
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //const SizedBox(width: 5.0),
                          Text(
                            'Pending Order :',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey.shade900),
                          ),
                          const Text(
                            '03',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Complete Order :',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey.shade900),
                          ),
                          const Text(
                            '22',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Deliver Order :',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey.shade900),
                          ),
                          const Text(
                            '15',
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
            GestureDetector(
              onTap: () {
                Get.to(const ListPatientPage());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    Text("Search Patient...")
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                ),
              ),
            ),

            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const ConsultRoomPage(),
                            //   ),
                            // );
                          },
                          child: Row(
                            children: [
                              //    const Text('08:00'),
                              // const SizedBox(width: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Container(
                                    margin: const EdgeInsets.all(4),
                                    height: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Image(
                                        image: NetworkImage(
                                            'https://m.media-amazon.com/images/M/MV5BMmUwN2ZkODAtNGJiNy00ZmRlLWI3OTItNDNlMTY5YmE4YjUxXkEyXkFqcGdeQXVyNzM4MjU3NzY@._V1_.jpg')),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 30.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Anukool',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueGrey.shade700),
                                  ),
                                  const SizedBox(height: 5.0),
                                  const Text(
                                    'Abdominal Pain',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black45),
                                  ),
                                ],
                              ),
                              // const Padding(
                              //   padding: EdgeInsets.symmetric(horizontal: 35),
                              //   child: Icon(Icons.video_call),
                              // ),
                            ],
                          ),
                        ),
                        // const Padding(
                        //   padding:
                        //       EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),

//   child: Divider(height: 1.2),
                        // ),
                        // GestureDetector(
                        //   onTap: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => const ConsultRoomPage(),
                        //       ),
                        //     );
                        //   },
                        //   child: Row(
                        //     children: [
                        //       const Text('08:45'),
                        //       const SizedBox(width: 20),
                        //       Row(
                        //         children: [
                        //           ClipRRect(
                        //             borderRadius: BorderRadius.circular(20.0),
                        //             child: Container(
                        //               height: 70,
                        //               width: 70,
                        //               decoration: BoxDecoration(
                        //                 borderRadius: BorderRadius.circular(20),
                        //               ),
                        //               child: const Image(
                        //                   image: NetworkImage(
                        //                       'https://i.pinimg.com/originals/64/82/dd/6482dd13010c80d348a7399efdb992c5.png')),
                        //             ),
                        //           ),
                        //           const SizedBox(width: 10.0),
                        //           Column(
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               Text(
                        //                 'Opsil Solis',
                        //                 style: TextStyle(
                        //                     fontSize: 18,
                        //                     fontWeight: FontWeight.bold,
                        //                     color: Colors.blueGrey.shade700),
                        //               ),
                        //               const SizedBox(height: 5.0),
                        //               const Text(
                        //                 'Chest pain',
                        //                 style: TextStyle(
                        //                     fontSize: 16, color: Colors.black45),
                        //               ),
                        //             ],
                        //           ),
                        //         ],
                        //       ),
                        //       const Padding(
                        //         padding: EdgeInsets.symmetric(horizontal: 60),
                        //         child: Icon(Icons.call),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // const Padding(
                        //   padding:
                        //       EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),

//   child: Divider(height: 1.2),
                        // ),
                        // GestureDetector(
                        //   onTap: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => const ConsultRoomPage(),
                        //       ),
                        //     );
                        //   },
                        //   child: Row(
                        //     children: [
                        //       const Text('09:12'),
                        //       const SizedBox(width: 20),
                        //       Row(
                        //         children: [

//           ClipRRect(
                        //             borderRadius: BorderRadius.circular(15.0),
                        //             child: Container(
                        //               height: 70,
                        //               width: 70,
                        //               decoration: BoxDecoration(
                        //                 borderRadius: BorderRadius.circular(10),
                        //               ),
                        //               child: const Image(
                        //                   image: NetworkImage(
                        //                       'https://sttotv8prodmedia.blob.core.windows.net/mediacache/a/9/5/c/f/e/a95cfebe8fa6105ddcf28750e3a8e8f87d229530.png')),
                        //             ),
                        //           ),
                        //           const SizedBox(width: 10.0),
                        //           Column(
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               Text(
                        //                 'Harry',
                        //                 style: TextStyle(
                        //                     fontSize: 18,
                        //                     fontWeight: FontWeight.bold,
                        //                     color: Colors.blueGrey.shade700),
                        //               ),
                        //               const SizedBox(height: 5.0),
                        //               const Text(
                        //                 'Painful urination',
                        //                 style: TextStyle(
                        //                     fontSize: 16, color: Colors.black45),
                        //               ),
                        //             ],
                        //           ),
                        //         ],
                        //       ),
                        //       const Padding(
                        //         padding: EdgeInsets.symmetric(horizontal: 30),
                        //         child: Icon(Icons.shield),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // const Padding(
                        //   padding:
                        //       EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                        //   child: Divider(height: 1.2),
                        // ),
                        // GestureDetector(
                        //   onTap: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => const ConsultRoomPage(),
                        //       ),
                        //     );
                        //   },
                        //   child: Row(
                        //     children: [
                        //       const Text('10:10'),
                        //       const SizedBox(width: 20),
                        //       Row(

//         children: [
                        //           ClipRRect(
                        //             borderRadius: BorderRadius.circular(15.0),
                        //             child: Container(
                        //               height: 70,
                        //               width: 70,
                        //               decoration: BoxDecoration(
                        //                 borderRadius: BorderRadius.circular(10),
                        //               ),
                        //               child: const Image(
                        //                   image: NetworkImage(

//                       'https://image-live.prd.b2c-coremedia.eu.pvh.cloud/caas/v1/media/1277998/data/753555d85ab0dd2020e7943d5496874c/portrait_ratio1x1/400/womens-mega-menu-mob.png')),
                        //             ),
                        //           ),
                        //           const SizedBox(width: 10.0),
                        //           Column(
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               Text(
                        //                 'Bentley Pater',
                        //                 style: TextStyle(
                        //                     fontSize: 18,
                        //                     fontWeight: FontWeight.bold,
                        //                     color: Colors.blueGrey.shade700),
                        //               ),
                        //               const SizedBox(height: 5.0),
                        //               const Text(
                        //                 'Cough',
                        //                 style: TextStyle(
                        //                     fontSize: 16, color: Colors.black45),
                        //               ),
                        //             ],
                        //           ),
                        //         ],
                        //       ),
                        //       const Padding(
                        //         padding: EdgeInsets.symmetric(horizontal: 40),
                        //         child: Icon(Icons.timer_outlined),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // const Padding(
                        //   padding:
                        //       EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                        //   child: Divider(height: 1.2),
                        // ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SpeedDial(
      //     backgroundColor: Colors.tealAccent.shade700,
      //     animatedIcon: AnimatedIcons.add_event,
      //     spacing: 12,
      //     spaceBetweenChildren: 12,
      //     children: [
      //       SpeedDialChild(
      //         child: const Icon(Icons.mail),
      //         backgroundColor: Colors.red,
      //         label: 'Mail',
      //       ),
      //       SpeedDialChild(
      //         child: const Icon(Icons.copy),
      //         backgroundColor: Colors.green,
      //         label: 'Copy',
      //       ),
      //       // SpeedDialChild(
      //       //   child: const Icon(Icons.mail),
      //       //   label: 'Mail',
      //       // ),
      //       // SpeedDialChild(
      //       //   child: const Icon(Icons.mail),
      //       //   label: 'Mail',
      //       // ),
      //       // SpeedDialChild(
      //       //   child: const Icon(Icons.mail),
      //       //   label: 'Mail',
      //       // ),
      //     ],
      //   ),
      // ),

// floatingActionButton: SizedBox(
      //   height: 70,
      //   width: 70,
      //   child: Padding(
      //     padding: const EdgeInsets.only(bottom: 10),
      //     child: FloatingActionButton(f
      //       backgroundColor: Colors.blueGrey.shade800,
      //       onPressed: () {},
      //       child: const Icon(
      //         Icons.add,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
