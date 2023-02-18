import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:kairohealth/screens/kairo_doctors/profile/Edit_Profile/edit_profile.dart';
import 'package:kairohealth/widgets/custom_text.dart';

class DrProfilePage extends StatefulWidget {
  const DrProfilePage({super.key});

  @override
  State<DrProfilePage> createState() => _DrProfilePageState();
}

class _DrProfilePageState extends State<DrProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent.shade700,
        title: const Text('PROFILES'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                color: Colors.tealAccent.shade700,
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      //  height: 280,
                      color: Colors.tealAccent.shade700,
                      child: Center(
                        child: Column(
                          children: const [
                            // SizedBox(height: 10),
                            CircleAvatar(
                              backgroundColor: Color(0xff69BF7F),
                              radius: 60.0,
                              backgroundImage: NetworkImage(
                                  'https://nisargahospital.in/wp-content/uploads/2021/08/Dr-Jithesh-P.jpg'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                            ),
                            Text(
                              'Dr. AashisJordan ',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'FCPS.MBBS, MD',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                            ),
                            Text(
                              'Gynecologist/Obstetrician',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              '11 Years experience',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              //  height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //  const SizedBox(width: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'EXEPERIENCE:',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey.shade900),
                          ),
                          const Text(
                            '10 Years+',
                            style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //const SizedBox(width: 5.0),
                          Text(
                            'LANGUAGES:',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey.shade900),
                          ),
                          Text(
                            'English, Hindi',
                            style: TextStyle(
                                fontSize: 16,
                                //  fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //const SizedBox(width: 5.0),
                          Text(
                            'Type of',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey.shade900),
                          ),
                          Text(
                            'Surgeon',
                            style: TextStyle(
                                fontSize: 16,
                                //  fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
              onPressed: () {
                Get.to(EditProfileDr());
              },
              child: const Text(
                'Edit Profile',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 120,
              child: Center(
                child: GestureDetector(
                  onTap: () async {
                    boxStroge.write('isLogedIn', false);
                    boxStroge.remove('token');
                    boxStroge.remove('phone');
                    boxStroge.remove('role');
                    await FirebaseAuth.instance.signOut();
                    Get.offAllNamed('/login');
                  },
                  child: CustomText(
                    text: 'Logout',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
