import 'package:flutter/material.dart';
import 'package:kairohealth/screens/records/record_details/editprofile/ordersandappointments/hc_wallet/hcwallet.dart';
import 'package:kairohealth/screens/records/record_details/editprofile/ordersandappointments/manage_payments/managepayment.dart';
import 'package:kairohealth/screens/records/record_details/editprofile/ordersandappointments/diagnostic_orders/myorders.dart';
import 'package:kairohealth/screens/records/record_details/editprofile/ordersandappointments/pharmacy_orders_and_transaction/pharmacyorderandtrans.dart';
import 'consult_appointments_transaction/consultappointmentandtransaction.dart';

class OrdersAppointmentsPage extends StatefulWidget {
  const OrdersAppointmentsPage({super.key});

  @override
  State<OrdersAppointmentsPage> createState() => _OrdersAppointmentsPageState();
}

class _OrdersAppointmentsPageState extends State<OrdersAppointmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Orders & Appointments',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PharmacyOrderAndTransaction(),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Pharmacy Orders & Transaction',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const ManagePaymentPage(),
          //       ),
          //     );
          //   },
          //   child: Container(
          //     margin: const EdgeInsets.all(20),
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(15),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.5),
          //           spreadRadius: 3,
          //           blurRadius: 3,
          //           offset: const Offset(0, 2),
          //         ),
          //       ],
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: const [
          //         Text(
          //           'Manage Payments',
          //           style: TextStyle(
          //             fontSize: 18,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //         SizedBox(width: 70),
          //         Icon(Icons.arrow_forward_ios_rounded)
          //       ],
          //     ),
          //   ),
          // ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const HCWalletPage(),
          //       ),
          //     );
          //   },
          //   child: Container(
          //     margin: const EdgeInsets.all(20),
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(15),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.5),
          //           spreadRadius: 3,
          //           blurRadius: 3,
          //           offset: const Offset(0, 2),
          //         ),
          //       ],
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: const [
          //         Text(
          //           'HC Wallet',
          //           style: TextStyle(
          //             fontSize: 18,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //         SizedBox(width: 140),
          //         Icon(Icons.arrow_forward_ios_rounded)
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
