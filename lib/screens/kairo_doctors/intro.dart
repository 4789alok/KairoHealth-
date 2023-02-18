import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/kairo_doctors/home/homepage.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      const Spacer(
                        flex: 3,
                      ),
                      Text(
                        'Your Health',
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.blueGrey.shade900,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'FredokaOne'),
                      ),
                      Text(
                        'Our Care',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.blueGrey.shade800,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'FredokaOne'),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Health care should be simple, fast\nuncomplicated.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 4.0,
                            height: 1.5),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/drHomePage');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.blueGrey.shade800,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Icon(Icons.arrow_forward)
                          ],
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Image.asset(
                  './images/doctor.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
