import 'package:flutter/material.dart';

class HCWalletPage extends StatefulWidget {
  const HCWalletPage({super.key});

  @override
  State<HCWalletPage> createState() => _HCWalletPageState();
}

class _HCWalletPageState extends State<HCWalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'HP Wallet ',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          const Icon(
                            Icons.wallet,
                            size: 70,
                          ),
                          Column(
                            children: [
                              const Text(
                                'Shivash S',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Row(
                                children: const [
                                  SizedBox(width: 50),
                                  Text(
                                    'Silver Member',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.only(right: 50.0, left: 50.0),
                    height: 70.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
                      child: Center(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Image(
                                image: NetworkImage(
                                    'https://dejpknyizje2n.cloudfront.net/marketplace/products/3071e11e742a4130a862d30c86f4c80b.png'),
                                height: 50,
                                width: 50,
                              ),
                              Text(
                                'Available Health Point',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                              ),
                              Text(
                                '\u{20B9}${00.00}',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                SizedBox(width: 30),
                Text(
                  'Coupons',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            const Divider(thickness: 1),
            const SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  '4 Coupons Available',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 50),
                Image(
                  image: NetworkImage(
                      'https://www.bootgum.com/wp-content/uploads/2018/07/Wallet_Cash_550px.gif'),
                  height: 45,
                  width: 45,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(20),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffE4C2F2),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '\u{20B9}${2000}',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade700),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Discount Coupon',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 45),
                      Text(
                        'Off',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade700),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 145),
                      const Text(
                        'Code',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                      ),
                      Text(
                        'PCP6',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 40),
                          Text(
                            'Valid till',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade900),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Text(
                            'Dec 31,2023',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade900),
                          ),
                          const SizedBox(width: 25),
                          Text(
                            'See T&C',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue.shade900),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff84C9D9),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '\u{20B9}${1000}',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade700),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Discount Coupon',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 45),
                      Text(
                        'Off',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade700),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 145),
                      const Text(
                        'Code',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                      ),
                      Text(
                        'PCP3',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 40),
                          Text(
                            'Valid till',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade900),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Text(
                            'May 01,2023',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade900),
                          ),
                          const SizedBox(width: 20),
                          Text(
                            'See T&C',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue.shade900),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffD9AB73),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '\u{20B9}${1000}',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade700),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Discount Coupon',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 45),
                      Text(
                        'Off',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade700),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 145),
                      const Text(
                        'Code',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                      ),
                      Text(
                        'PCP3',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 40),
                          Text(
                            'Valid till',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade900),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Text(
                            'April 01,2023',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade900),
                          ),
                          const SizedBox(width: 15),
                          Text(
                            'See T&C',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue.shade900),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffF2B6C1),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '\u{20B9}${1000}',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade700),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Discount Coupon',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 45),
                      Text(
                        'Off',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.shade700),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 145),
                      const Text(
                        'Code',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                      ),
                      Text(
                        'PCP3',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 40),
                          Text(
                            'Valid till',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade900),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Text(
                            'July 01,2023',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade900),
                          ),
                          const SizedBox(width: 20),
                          Text(
                            'See T&C',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue.shade900),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // const SizedBox(height: 20),
            // DefaultTabController(
            //   length: 2,
            //   child: Expanded(
            //     child: Column(
            //       children: <Widget>[
            //         Container(
            //           // constraints: BoxConstraints.expand(height: 50),
            //           child: TabBar(
            //             isScrollable: true,
            //             labelColor: Colors.green,
            //             labelStyle: const TextStyle(
            //                 fontSize: 18, fontWeight: FontWeight.bold),
            //             unselectedLabelColor: Colors.blue.shade900,
            //             tabs: const [
            //               Tab(text: "Coupons"),
            //               Tab(text: "Coins"),
            //             ],
            //           ),
            //         ),
            //         Expanded(
            //           child: TabBarView(
            //             children: [
            //               Container(
            //                 child: Column(
            //                   children: [
            //                     const SizedBox(height: 20),
            //                     Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceEvenly,
            //                       children: const [
            //                         Text(
            //                           '4 Coupons Available',
            //                           style: TextStyle(
            //                               fontSize: 20,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                         SizedBox(width: 30),
            //                         Image(
            //                           image: NetworkImage(
            //                               'https://www.bootgum.com/wp-content/uploads/2018/07/Wallet_Cash_550px.gif'),
            //                           height: 50,
            //                           width: 50,
            //                         ),
            //                       ],
            //                     ),
            //                     Container(
            //                       alignment: Alignment.center,
            //                       margin: EdgeInsets.all(20),
            //                       height: 200,
            //                       width: double.infinity,
            //                       decoration: BoxDecoration(
            //                         color: Colors.white,
            //                         borderRadius: BorderRadius.circular(30),
            //                         boxShadow: [
            //                           BoxShadow(
            //                             color: Colors.grey.withOpacity(0.5),
            //                             spreadRadius: 5,
            //                             blurRadius: 7,
            //                             offset: Offset(0, 2),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                     Container(
            //                       alignment: Alignment.center,
            //                       margin: EdgeInsets.all(20),
            //                       height: 200,
            //                       width: double.infinity,
            //                       decoration: BoxDecoration(
            //                         color: Colors.white,
            //                         borderRadius: BorderRadius.circular(30),
            //                         boxShadow: [
            //                           BoxShadow(
            //                             color: Colors.grey.withOpacity(0.5),
            //                             spreadRadius: 5,
            //                             blurRadius: 7,
            //                             offset: Offset(0, 2),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Container(
            //                 child: Column(
            //                   children: [
            //                     const SizedBox(height: 20),
            //                     Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceEvenly,
            //                       children: const [
            //                         Text(
            //                           '0 Kairo Coins',
            //                           style: TextStyle(
            //                               fontSize: 20,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                         SizedBox(width: 50),
            //                         Image(
            //                           image: NetworkImage(
            //                               'https://www.bootgum.com/wp-content/uploads/2018/07/Wallet_Cash_550px.gif'),
            //                           height: 50,
            //                           width: 50,
            //                         ),
            //                       ],
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
