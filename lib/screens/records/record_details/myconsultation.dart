import 'package:flutter/material.dart';

class MyConsultationsPage extends StatefulWidget {
  const MyConsultationsPage({super.key});

  @override
  State<MyConsultationsPage> createState() => _MyConsultationsPageState();
}

class _MyConsultationsPageState extends State<MyConsultationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'My Consultations',
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
                'Consultation history of ',
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
          const SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            height: 360,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade50),
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
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Fever',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 100),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Colors.green),
                          ),
                          child: const Center(
                            child: Text(
                              'Active',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(3.0),
                        ),
                        const Text(
                          '.',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    SizedBox(width: 30),
                    Text(
                      '22 Nov 2022 | 06:11 PM',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 70,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.grey.shade500),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey.shade300,
                            child: const ClipOval(
                              child: Image(
                                  image: NetworkImage(
                                      'https://www.truenorth.co.in/wp-content/uploads/2022/05/Atharva-Surange-1-310x310.png')),
                            ),
                          ),
                          Column(
                            children: const [
                              Text(
                                'Dr. Janam Srinivas',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Physician',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.amber.shade900),
                            onPressed: () {},
                            child: const Text(
                              'Go to chat',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  thickness: .5,
                  color: Colors.black,
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Row(
                      children: const [
                        SizedBox(width: 30),
                        Text(
                          'Symptom',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      children: const [
                        SizedBox(width: 30),
                        Text(
                          '22 Nov 2022 | 06:11 PM',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      children: const [
                        SizedBox(width: 30),
                        Text(
                          'Fever',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  thickness: .1,
                  color: Colors.black,
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'Details',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
