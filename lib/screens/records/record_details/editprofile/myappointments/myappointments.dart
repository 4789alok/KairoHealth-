import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/consult/consultpage.dart';

class MyAppointmentsPage extends StatefulWidget {
  const MyAppointmentsPage({super.key});

  @override
  State<MyAppointmentsPage> createState() => _MyAppointmentsPageState();
}

class _MyAppointmentsPageState extends State<MyAppointmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Select Patient',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //const SizedBox(height: 20),
          Row(
            children: [
              // const SizedBox(width: 15),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                //  height: 50,
                //width: 50,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              // const SizedBox(width: 10),
              const Text(
                'All Appointments',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(14),
            margin: const EdgeInsets.all(12),
            //   height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
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
                //  const SizedBox(height: 7.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Want to book an appointment?',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Image(
                      image: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/3774/3774299.png'),
                      height: 80,
                    )
                  ],
                ),
                Row(
                  children: [
                    // const SizedBox(width: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.amber.shade600),
                      onPressed: () {
                        Get.toNamed('/consultPAge');
                      },
                      child: const Text(
                        'BOOK AN APPOINTMENT',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
