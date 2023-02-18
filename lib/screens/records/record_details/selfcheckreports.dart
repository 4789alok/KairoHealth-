import 'package:flutter/material.dart';

class SelfCheckReportsPage extends StatefulWidget {
  const SelfCheckReportsPage({super.key});

  @override
  State<SelfCheckReportsPage> createState() => _SelfCheckReportsPageState();
}

class _SelfCheckReportsPageState extends State<SelfCheckReportsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'My Self-checks',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: const [
              SizedBox(width: 20),
              Text(
                'Showing Self-checks for',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: EdgeInsets.all(3.0),
              ),
              Text(
                'Shivash',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(3.0),
              ),
              Text(
                '(Change)',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
              ),
            ],
          ),
          Column(
            children: const [
              SizedBox(height: 70),
              Image(
                image: NetworkImage(
                    'https://i0.wp.com/healthybrains.org/wp-content/uploads/2016/09/wsi-imageoptim-steps875x1367.png?resize=875%2C1367&ssl=1'),
                height: 500,
                width: 500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
