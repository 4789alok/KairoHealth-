import 'package:flutter/material.dart';

class PatientDetailsPage extends StatefulWidget {
  const PatientDetailsPage({super.key});

  @override
  State<PatientDetailsPage> createState() => _PatientDetailsPageState();
}

class _PatientDetailsPageState extends State<PatientDetailsPage> {
  // final List<String> itemss = [
  //   'Pratapgarh',
  //   'Prayagraj',
  //   'Amethi',
  //   'Sultanpur',
  //   'Nainital',
  //   'Ranikhet'
  // ];
  // String? selectedValue2;
  // String? selectedValue5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent.shade700,
        title: const Text('Patient Details'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black26)),
                      child: Row(
                        children: [
                          Text('Full Name :'),
                        ],
                      ),

                      // TextFormField(
                      //   decoration: InputDecoration(
                      //     labelText: "Full Name",
                      //     labelStyle: const TextStyle(
                      //         color: Color(0xFF033d73),
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 14),
                      //     enabledBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(6),
                      //     ),
                      //     focusedBorder: const OutlineInputBorder(
                      //       borderRadius: BorderRadius.all(Radius.circular(6)),
                      //       borderSide: BorderSide(
                      //         color: Color(0xFF033d73),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ),
                    // const SizedBox(
                    //   height: 04,
                    // ),

                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black26)),
                      child: Row(
                        children: [
                          Text('Phone Number :'),
                        ],
                      ),

// TextFormField(
                      //   decoration: InputDecoration(
                      //     labelText: "Full Name",
                      //     labelStyle: const TextStyle(
                      //         color: Color(0xFF033d73),
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 14),
                      //     enabledBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(6),
                      //     ),
                      //     focusedBorder: const OutlineInputBorder(
                      //       borderRadius: BorderRadius.all(Radius.circular(6)),
                      //       borderSide: BorderSide(
                      //         color: Color(0xFF033d73),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black26)),
                      child: Row(
                        children: [
                          Text('Age :'),
                        ],
                      ),

                      // TextFormField(
                      //   decoration: InputDecoration(
                      //     labelText: "Full Name",
                      //     labelStyle: const TextStyle(
                      //         color: Color(0xFF033d73),
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 14),
                      //     enabledBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(6),
                      //     ),
                      //     focusedBorder: const OutlineInputBorder(
                      //       borderRadius: BorderRadius.all(Radius.circular(6)),
                      //       borderSide: BorderSide(
                      //         color: Color(0xFF033d73),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black26)),
                      child: Row(
                        children: [
                          Text('Gender :'),
                        ],
                      ),

// TextFormField(
                      //   decoration: InputDecoration(
                      //     labelText: "Full Name",
                      //     labelStyle: const TextStyle(
                      //         color: Color(0xFF033d73),
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 14),
                      //     enabledBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(6),
                      //     ),
                      //     focusedBorder: const OutlineInputBorder(
                      //       borderRadius: BorderRadius.all(Radius.circular(6)),
                      //       borderSide: BorderSide(
                      //         color: Color(0xFF033d73),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ),
                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width - 4,
                    //   child: Row(
                    //     children: [
                    //       Padding(
                    //         padding: const EdgeInsets.all(14.0),
                    //         child: Container(
                    //           margin: const EdgeInsets.all(10),
                    //           padding: const EdgeInsets.symmetric(
                    //               vertical: 20, horizontal: 30),

                    //           decoration: BoxDecoration(
                    //               borderRadius: BorderRadius.circular(10),
                    //               border: Border.all(color: Colors.black)),
                    //           child: Row(
                    //             children: [
                    //               Text('Gender :'),
                    //             ],
                    //           ),

                    //           // TextFormField(
                    //           //   decoration: InputDecoration(
                    //           //     labelText: "Full Name",
                    //           //     labelStyle: const TextStyle(
                    //           //         color: Color(0xFF033d73),
                    //           //         fontWeight: FontWeight.bold,
                    //           //         fontSize: 14),
                    //           //     enabledBorder: OutlineInputBorder(
                    //           //       borderRadius: BorderRadius.circular(6),
                    //           //     ),
                    //           //     focusedBorder: const OutlineInputBorder(
                    //           //       borderRadius: BorderRadius.all(Radius.circular(6)),
                    //           //       borderSide: BorderSide(
                    //           //         color: Color(0xFF033d73),
                    //           //       ),
                    //           //     ),
                    //           //   ),
                    //           // ),
                    //         ),
                    //       ),
                    //       Container(
                    //         margin: const EdgeInsets.all(10),
                    //         padding: const EdgeInsets.symmetric(
                    //             vertical: 20, horizontal: 50),

                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(10),
                    //             border: Border.all(color: Colors.black)),
                    //         child: Row(
                    //           children: [
                    //             Text('Age :'),
                    //           ],
                    //         ),

//         // TextFormField(
                    //         //   decoration: InputDecoration(
                    //         //     labelText: "Full Name",
                    //         //     labelStyle: const TextStyle(
                    //         //         color: Color(0xFF033d73),
                    //         //         fontWeight: FontWeight.bold,
                    //         //         fontSize: 14),
                    //         //     enabledBorder: OutlineInputBorder(
                    //         //       borderRadius: BorderRadius.circular(6),
                    //         //     ),
                    //         //     focusedBorder: const OutlineInputBorder(
                    //         //       borderRadius: BorderRadius.all(Radius.circular(6)),
                    //         //       borderSide: BorderSide(
                    //         //         color: Color(0xFF033d73),
                    //         //       ),
                    //         //     ),
                    //         //   ),
                    //         // ),
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    // Container(
                    //   padding: const EdgeInsets.symmetric(
                    //       vertical: 10, horizontal: 12),
                    //   child: TextFormField(
                    //     decoration: InputDecoration(
                    //         labelText: "Pincode(Required)*",
                    //         labelStyle: const TextStyle(
                    //             color: Color(0xFF033d73),
                    //             fontWeight: FontWeight.bold,
                    //             fontSize: 14),
                    //         enabledBorder: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(6),
                    //         ),
                    //         focusedBorder: const OutlineInputBorder(
                    //             borderRadius:
                    //                 BorderRadius.all(Radius.circular(6)),
                    //             borderSide: BorderSide(
                    //               color: Color(0xFF033d73),
                    //             ),),),
                    //   ),
                    // ),

                    // Container(
                    //   padding: const EdgeInsets.symmetric(
                    //       vertical: 10, horizontal: 12),
                    //   child: TextFormField(
                    //     decoration: InputDecoration(
                    //       labelText: "House No,Building Name(Required)*",
                    //       labelStyle: const TextStyle(
                    //           color: Color(0xFF033d73),
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 14),
                    //       enabledBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(6),
                    //       ),
                    //       focusedBorder: const OutlineInputBorder(
                    //         borderRadius: BorderRadius.all(Radius.circular(6)),
                    //         borderSide: BorderSide(
                    //           color: Color(0xFF033d73),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),

// Container(
                    //   padding: const EdgeInsets.symmetric(
                    //       vertical: 10, horizontal: 12),
                    //   child: TextFormField(
                    //     decoration: InputDecoration(
                    //       labelText: "Road name,Area,Colony(Required)*",
                    //       labelStyle: const TextStyle(
                    //           color: Color(0xFF033d73),
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 14),
                    //       enabledBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(6),
                    //       ),
                    //       focusedBorder: const OutlineInputBorder(
                    //         borderRadius: BorderRadius.all(Radius.circular(6)),
                    //         borderSide: BorderSide(
                    //           color: Color(0xFF033d73),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                // GestureDetector(
                //   onTap: () {},
                //   child: Container(
                //     margin: const EdgeInsets.all(10),
                //     decoration: BoxDecoration(
                //       color: Colors.blue.shade900,
                //       borderRadius: const BorderRadius.all(
                //         Radius.circular(12),
                //       ),
                //     ),
                //     padding: const EdgeInsets.all(16.0),
                //     child: const Text(
                //       "Save Address",
                //       style: TextStyle(
                //           fontFamily: "Times New Roman",
                //           fontWeight: FontWeight.bold,
                //           fontSize: 14,
                //           color: Colors.white),
                //     ),
                //   ),
                // ),
                const SizedBox(height: 20),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      margin: const EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black26)
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey.withOpacity(0.5),
                          //     spreadRadius: 3,
                          //     blurRadius: 2,
                          //     offset: const Offset(0, 2),
                          //   ),
                          // ],
                          ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //  const SizedBox(width: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Title :',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blueGrey.shade900),
                              ),
                              const Text(
                                'kidney infection, 26',
                                style: TextStyle(
                                    fontSize: 14,
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
                                'Discription :',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blueGrey.shade900),
                              ),
                              Column(
                                children: [
                                  Text(
                                    ' pyelonephritis',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: ElevatedButton(
                              style:
                                  ElevatedButton.styleFrom(primary: Colors.red),
                              onPressed: () {
                                // Get.to(const PatientPrescriptionPage());
                              },
                              child: const Text(
                                'View',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
