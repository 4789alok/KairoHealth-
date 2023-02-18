import 'package:flutter/material.dart';
import 'package:kairohealth/screens/medicines/myorders/yourcart.dart';

class TrackerPage extends StatefulWidget {
  const TrackerPage({super.key});

  @override
  State<TrackerPage> createState() => _TrackerPageState();
}

class _TrackerPageState extends State<TrackerPage> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Row(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.zero,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Shipment Delivered',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 25),
                      Text(
                        'View Delivery history',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber.shade900),
                      ),
                    ],
                  ),
                  Center(
                    child: Theme(
                      data: Theme.of(context).copyWith(
                          colorScheme:
                              const ColorScheme.light(primary: Colors.green)),
                      child: Stepper(
                        type: StepperType.vertical,
                        currentStep: currentStep,
                        onStepTapped: (index) {
                          setState(() => currentStep = index);
                        },
                        // onStepContinue: () {
                        //   if (currentStep != 5) {
                        //     setState(() => currentStep++);
                        //   }
                        // },
                        // onStepCancel: () {
                        //   if (currentStep != 0) {
                        //     setState(() => currentStep--);
                        //   }
                        // },
                        steps: [
                          Step(
                            isActive: currentStep >= 0,
                            title: const Text(
                              'Order Confirmed',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            content: Column(
                              children: const [
                                Text(
                                  'OCT , 16',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('01:05'),
                              ],
                            ),
                          ),
                          Step(
                            isActive: currentStep >= 1,
                            title: const Text(
                              'Shipped',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            content: Column(
                              children: const [
                                Text(
                                  'OCT , 16',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '01:05',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Step(
                            isActive: currentStep >= 2,
                            title: const Text(
                              'Out For Delivery',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            content: Column(
                              children: const [
                                Text(
                                  'OCT , 16',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '05:07',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Step(
                            isActive: currentStep >= 3,
                            title: const Text(
                              'Delivered',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            content: Column(
                              children: const [
                                Text(
                                  'OCT , 18',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '05:20',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  const Divider(thickness: 1.5),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Column(
                    children: [
                      Row(
                        children: const [
                          SizedBox(width: 20),
                          Text(
                            'DELIVER TO',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      Row(
                        children: const [
                          SizedBox(width: 20),
                          Text(
                            'Shivash',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      Row(
                        children: const [
                          SizedBox(width: 20),
                          Text(
                            'BEHIND SBI BANK CHILBILA,Bela Pratapgarh,',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 131, 114, 114)),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBox(width: 20),
                          Text(
                            'Pratapgarh,560129,KARNATAKA',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 131, 114, 114)),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBox(width: 20),
                          Text(
                            'Phone : 8765345678',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 131, 114, 114)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(thickness: 1.5),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SHIPMENT DETAILS',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '(Total 1 item(s in this shipment 1 of 1))',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 131, 114, 114)),
                        ),
                        SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'ITEM NAME',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'Renosave Tablet 10s',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              //   const SizedBox(width: 10),
                              Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'QTY',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    '6',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'MRP VALUE',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    '\u{20B9}${900.00}',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // SizedBox(width: 30),
                      ],
                    ),
                  ),
                  const Divider(thickness: 1.5),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'PAYMENT DETAILS',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'MRP Total',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 131, 114, 114)),
                          ),
                          SizedBox(width: 190),
                          Text(
                            '\u{20B9}${900.00}',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Discount Total',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 131, 114, 114),
                            ),
                          ),
                          SizedBox(width: 155),
                          Text(
                            '-\u{20B9}${225.00}',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Delivery Charges',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 131, 114, 114)),
                          ),
                          SizedBox(width: 160),
                          Text(
                            'Free',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Packaging Charges',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 131, 114, 114)),
                          ),
                          SizedBox(width: 130),
                          Text(
                            '+\u{20B9}${00.00}',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'TOTAL',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(width: 170),
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  'NEW',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                decoration:
                                    const BoxDecoration(color: Colors.green),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(3.0),
                              ),
                              const Text(
                                '+\u{20B9}${00.00}',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // const Padding(
                      //   padding: EdgeInsets.all(5.0),
                      // ),
                      // Row(
                      //   children: const [
                      //     SizedBox(width: 20),
                      //     Text(
                      //       '(was Rs.965.26 before items were modified)',
                      //       style: TextStyle(
                      //           fontSize: 15,
                      //           fontWeight: FontWeight.bold,
                      //           color: Color.fromARGB(255, 131, 114, 114)),
                      //     ),
                      //   ],
                      // ),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      Row(
                        children: const [
                          SizedBox(width: 25),
                          Text(
                            'PAYMENT METHOD',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'ONLINE',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(width: 200),
                          Text(
                            '\u{20B9}${675.00}',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  const Divider(thickness: 1.5),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Amount to be refunded',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      SizedBox(width: 90),
                      Text(
                        '\u{20B9}${290.26}',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  const Divider(thickness: 1.5),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 15),
                      const Text(
                        'Track your refund status by clicking',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(2.0),
                      ),
                      Text(
                        'REFUND STATUS',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber.shade900),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  const Divider(thickness: 1.5),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(primary: Colors.amber.shade900),
            child: const Text(
              'RE-ORDER',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
