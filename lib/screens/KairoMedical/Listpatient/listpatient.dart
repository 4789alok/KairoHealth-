import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/KairoMedical/Listpatient/addpriscription_audio.dart';

class ListPatientPage extends StatefulWidget {
  const ListPatientPage({super.key});

  @override
  State<ListPatientPage> createState() => _ListPatientPageState();
}

class _ListPatientPageState extends State<ListPatientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: PreferredSize(
                // ignore: sort_child_properties_last
                child: Container(
                  color: Colors.white,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 15.0),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: 'Search Patient...',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                    ),
                  ),
                ),
                preferredSize: const Size.fromHeight(50.0),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(const AddPriscriptionAudioPage());
              },
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(5.0),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.withOpacity(0.5),
                        //     spreadRadius: 3,
                        //     blurRadius: 3,
                        //     offset: const Offset(0, 2),
                        //   ),
                        // ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 0.0),
                                child: const Image(
                                  image: NetworkImage(
                                      'https://t3.ftcdn.net/jpg/03/31/63/82/360_F_331638217_BsSy1TcziNymxOBAMGO6Zrc4hge5yQWz.jpg'),
                                  width: 80,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 15.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 0),
                                      child: Row(
                                        children: const [
                                          Text(
                                            'Name : ',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Abhishek Sharma',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: const [
                                          Text(
                                            'Mobile : ',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            '9988776600',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: const [
                                          Text(
                                            'E-mail : ',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            'kairos123@gmail.com',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: Column(
                      //   children: const [
                      //     // Image(
                      //     //   image: NetworkImage(
                      //    'https://t3.ftcdn.net/jpg/03/31/63/82/360_F_331638217_BsSy1TcziNymxOBAMGO6Zrc4hge5yQWz.jpg'),
                      //     //   width: 70,
                      //     // ),
                      //     // Text('Name :'),
                      //     // Text('Mobile :'),
                      //     // Text('E-mail :'),
                      //     // //Text(' :')
                      //   ],
                      // ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
