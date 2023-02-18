import 'package:flutter/material.dart';

import '../../kairo_doctors/Detail_of_Parient/Detail_of_patient.dart';

class PatientListPage extends StatefulWidget {
  const PatientListPage({super.key});

  @override
  State<PatientListPage> createState() => _PatientListPageState();
}

class _PatientListPageState extends State<PatientListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Patient List'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PatientDetailsPage(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  height: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Image(
                                      image: NetworkImage(
                                          'https://m.media-amazon.com/images/M/MV5BMmUwN2ZkODAtNGJiNy00ZmRlLWI3OTItNDNlMTY5YmE4YjUxXkEyXkFqcGdeQXVyNzM4MjU3NzY@._V1_.jpg')),
                                ),
                              ),
                            ),
                            const SizedBox(width: 30.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Anukool',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey.shade700),
                                ),
                                const SizedBox(height: 5.0),
                                const Text(
                                  'Abdominal Pain',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black45),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
