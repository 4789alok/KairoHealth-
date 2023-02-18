import 'package:flutter/material.dart';

class MySubscriptionsPage extends StatefulWidget {
  const MySubscriptionsPage({super.key});

  @override
  State<MySubscriptionsPage> createState() => _MySubscriptionsPageState();
}

class _MySubscriptionsPageState extends State<MySubscriptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Subscriptions',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: const [
            Image(
              image: NetworkImage(
                  'https://res.cloudinary.com/du8msdgbj/image/upload/v1543491729/marketing/dcqkkd7zn7hlf2o9kqms.png'),
              height: 400,
              width: 350,
            ),
            SizedBox(height: 50),
            Text(
              'No data available',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
