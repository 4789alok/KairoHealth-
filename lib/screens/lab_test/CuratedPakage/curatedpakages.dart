import 'package:flutter/material.dart';
import 'package:kairohealth/data/constant.dart';

class CuratedPakages extends StatefulWidget {
  const CuratedPakages({super.key});

  @override
  State<CuratedPakages> createState() => _CuratedPakagesState();
}

class _CuratedPakagesState extends State<CuratedPakages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: const [
              SizedBox(width: 20),
              Text(
                'CLINICALLY CURATED PACKAGES',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(10.0),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 3,
              mainAxisSpacing: 3,
            ),
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blue.shade200),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  const Color.fromARGB(255, 231, 226, 226),
                              child: ClipOval(
                                child: Image(
                                  image:
                                      NetworkImage(listcurated[index]['image']),
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Center(
                              child: Text(
                                listcurated[index]['title'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: 8,
          ),
        ],
      ),
    );
  }
}
