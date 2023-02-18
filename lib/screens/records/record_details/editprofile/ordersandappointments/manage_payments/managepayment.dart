import 'package:flutter/material.dart';

class ManagePaymentPage extends StatefulWidget {
  const ManagePaymentPage({super.key});

  @override
  State<ManagePaymentPage> createState() => _ManagePaymentPageState();
}

class _ManagePaymentPageState extends State<ManagePaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'MANAGE PAYMENTS',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: NetworkImage(
                  'https://www.fusebill.com/hs-fs/hubfs/Automated-Payment-Management-Technology.png?width=620&name=Automated-Payment-Management-Technology.png'),
              height: 500,
              width: 500,
            ),
          ],
        ),
      ),
    );
  }
}
