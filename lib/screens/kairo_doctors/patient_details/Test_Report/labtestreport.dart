import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../add_prescription/prescriptionreport.dart';

class LabTestReportPage extends StatefulWidget {
  const LabTestReportPage({super.key});

  @override
  State<LabTestReportPage> createState() => _LabTestReportPageState();
}

class _LabTestReportPageState extends State<LabTestReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent.shade700,
        title: const Text('Test Report'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_pin,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const SizedBox(width: 15),
                      Text(
                        'Test Reports',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade700),
                      ),
                    ],
                  ),

                  /// const SizedBox(height: 20),
                  // Column(
                  //   children: [
                  //     Row(
                  //       children: const [
                  //         SizedBox(width: 15),
                  //         Text(
                  //           'For privacy reasons, reports uploaded here are for your view',
                  //           style: TextStyle(color: Colors.blue),
                  //         ),
                  //       ],
                  //     ),
                  //     Row(
                  //       children: const [
                  //         SizedBox(width: 15),
                  //         Text(
                  //           'only. To share with doctors, please upload selected reports in',
                  //           style: TextStyle(color: Colors.blue),
                  //         ),
                  //       ],
                  //     ),
                  //     Row(
                  //       children: const [
                  //         SizedBox(width: 15),
                  //         Text(
                  //           'your chat with the doctor.',
                  //           style: TextStyle(color: Colors.blue),
                  //         ),
                  //       ],
                  //     ),
                  //     const SizedBox(height: 150),
                  //     const Image(
                  //       image: NetworkImage(
                  //           'https://cdn.iconscout.com/icon/premium/png-256-thumb/no-data-1995355-1686641.png'),
                  //     ),
                  //     const SizedBox(height: 10),
                  //     Text(
                  //       'No data available !!!',
                  //       style: TextStyle(
                  //           fontSize: 20,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.blueGrey.shade700),
                  //     ),
                  //   ],
                  // ),

                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          color: Colors.blue.shade50,
                          margin: EdgeInsets.all(6),
                          padding: EdgeInsets.all(14),
                          child: Column(
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
                        );
                      })
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber.shade500,
                      elevation: 0.0,
                    ),
                    onPressed: () {
                      Get.to(PrescriptionReport());
                    },
                    child: const Text(
                      'ADD TEST REPORT',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
