import 'package:flutter/material.dart';

class MyCareProgramsPage extends StatefulWidget {
  const MyCareProgramsPage({super.key});

  @override
  State<MyCareProgramsPage> createState() => _MyCareProgramsPageState();
}

class _MyCareProgramsPageState extends State<MyCareProgramsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'My Care Programs',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          Image(
            image: NetworkImage(
                'https://healthsnap.io/wp-content/uploads/2021/08/Remote-Image-1.png'),
          ),
          SizedBox(height: 20),
          Text(
            'Virtual care Management.',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
