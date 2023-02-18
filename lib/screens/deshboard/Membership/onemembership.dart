import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/deshboard/Membership/review_order.dart';

class OneMembershipPage extends StatefulWidget {
  const OneMembershipPage({super.key});

  @override
  State<OneMembershipPage> createState() => _OneMembershipPageState();
}

class _OneMembershipPageState extends State<OneMembershipPage> {
  bool select1 = false;
  bool select2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('One Membership'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select plan',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey.shade700),
                    ),
                    Text(
                      'industory offers',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 160,
              // width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  //  shrinkWrap: true,
                  //  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          select1 = true;
                          select2 = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 14, top: 10),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey.shade300)),
                        margin: const EdgeInsets.only(right: 10, left: 10),
                        // height: 150,
                        //width: 174,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 10, top: 8),
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    border: Border.all(
                                      color: Colors.grey.shade400,
                                    )),
                                child: select1
                                    ? const Icon(
                                        Icons.done_outline_outlined,
                                        color: Colors.green,
                                        size: 12,
                                      )
                                    : SizedBox.shrink()),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '6 month',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "\u{20B9}${549}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            // Column(
            //   children: const [
            //     Padding(
            //       padding: EdgeInsets.only(left: 8.0),
            //       child: Text(
            //         "Rs 39,215",
            //         style: TextStyle(
            //             fontSize: 16, fontWeight: FontWeight.bold),
            //       ),
            //     ),
            //     Text(
            //       "for 1 year",
            //       style: TextStyle(
            //           fontSize: 14, fontWeight: FontWeight.bold),
            //     ),
            //   ],
            // ),
            // const Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: Text(
            //     "EMI starts at Rs 3,268/month",
            //     style: TextStyle(
            //         fontSize: 10, fontWeight: FontWeight.bold),
            //   ),
            // ),
            // Container(
            //   padding: EdgeInsets.all(2),
            //   // height: 50,
            //   width: double.infinity,
            //   decoration: const BoxDecoration(
            //     color: Colors.red,
            //     borderRadius: BorderRadius.only(
            //         bottomLeft: Radius.circular(10),
            //         bottomRight: Radius.circular(10)),
            //   ),
            //   child: const Center(
            //     child: Text(
            //       "Few seats left",
            //       style: TextStyle(
            //           fontSize: 12,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white),
            //     ),
            //   ),
            // ),
            //             ],
            //           )),
            //     ),
            //   ],
            // ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 20),
                Text(
                  'What you get',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade700),
                ),
              ],
            ),

            ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.check_box,
                          color: Colors.pink.shade400,
                        ),
                      ),
                      //  const SizedBox(width: 10),
                      Text(
                        '50% off Up to \u{20B9}${300} on all Doctor Consultation',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade700),
                      )
                    ],
                  );
                }),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Get.to(const ReviewOrder());
                },
                child: const Text('Subscriptions'))
          ],
        ),
      ),
    );
  }
}
