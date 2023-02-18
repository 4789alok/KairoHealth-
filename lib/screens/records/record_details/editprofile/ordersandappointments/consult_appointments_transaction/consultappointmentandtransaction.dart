import 'package:flutter/material.dart';
import 'package:kairohealth/screens/records/record_details/editprofile/myappointments/myappointments.dart';
import 'package:kairohealth/screens/records/record_details/editprofile/ordersandappointments/consult_appointments_transaction/my_transactions/mytransactions.dart';

class ConsultAppointsAndTransactionPage extends StatefulWidget {
  const ConsultAppointsAndTransactionPage({super.key});

  @override
  State<ConsultAppointsAndTransactionPage> createState() =>
      _ConsultAppointsAndTransactionPageState();
}

class _ConsultAppointsAndTransactionPageState
    extends State<ConsultAppointsAndTransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Consult Appointments & Transaction',
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
                  builder: (context) => const MyAppointmentsPage(),
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
                    'My Appointments',
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyTransactions(),
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
