import 'package:flutter/material.dart';
import 'package:kairohealth/screens/medicines/myorders/myorders.dart';
import 'package:kairohealth/screens/records/record_details/editprofile/ordersandappointments/pharmacy_orders_and_transaction/my_transactions/mytransactions.dart';

class PharmacyOrderAndTransaction extends StatefulWidget {
  const PharmacyOrderAndTransaction({super.key});

  @override
  State<PharmacyOrderAndTransaction> createState() =>
      _PharmacyOrderAndTransactionState();
}

class _PharmacyOrderAndTransactionState
    extends State<PharmacyOrderAndTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Pharmacy Order & Transaction',
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
                  builder: (context) => const MyOrdersPage(),
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
                    'My Orders',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 120),
                  Icon(Icons.arrow_forward_ios_rounded),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyTransactionsPage(),
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
                    'My Transactions',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 70),
                  Icon(Icons.arrow_forward_ios_rounded),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
