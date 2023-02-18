import 'package:flutter/material.dart';

class MedicalHistoryAndLifestylePage extends StatefulWidget {
  const MedicalHistoryAndLifestylePage({super.key});

  @override
  State<MedicalHistoryAndLifestylePage> createState() =>
      _MedicalHistoryAndLifestylePageState();
}

class _MedicalHistoryAndLifestylePageState
    extends State<MedicalHistoryAndLifestylePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Medical History & Lifestyle',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 25),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.yellow.shade100),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: const [
                    SizedBox(width: 10),
                    Text(
                      'Add information about your lifestyle,previous medical',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(width: 10),
                    Text(
                      'conditions and procedures. This information helps ',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(width: 10),
                    Text(
                      'doctors to make better assessment of your illness',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(width: 10),
                    Text(
                      'and syggest the right medication.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          const Image(
              image: NetworkImage(
                  'https://www.porterhousemedical.com/wp-content/uploads/2022/03/World_obesity_day_v0.1_orange-1.png'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
