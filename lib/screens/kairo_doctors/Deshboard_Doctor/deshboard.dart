import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/kairo_doctors/Deshboard_Doctor/controller/dr_dashboard_controller.dart';
import 'package:kairohealth/screens/kairo_doctors/Patient_List/patientlist.dart';
import 'package:kairohealth/screens/kairo_doctors/home/homepage.dart';
import 'package:kairohealth/screens/kairo_doctors/profile/profilepage.dart';
import 'package:kairohealth/services/local_notification_service.dart';

class DrDeshbardPage extends StatefulWidget {
  const DrDeshbardPage({Key? key}) : super(key: key);

  @override
  _DrDeshbardPageState createState() => _DrDeshbardPageState();
}

class _DrDeshbardPageState extends State<DrDeshbardPage> {
  final controller = Get.find<DrDeshboardController>();
  // int Index = 0;
  // final Screens = const [
  //   DrHomePage(),
  //   DrPatientListPage(),
  //   DrProfilePage(),
  // ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    LocalNotificationService.initialize(context);

    //gives you the message on which user taps and it opened the app from
    // terminated state.
    FirebaseMessaging.instance.getInitialMessage();

    // this will only gets call when the app in the forground
    FirebaseMessaging.onMessage.listen((message) {
      if (message.notification != null) {
        print(message.notification!.title);
        print(message.notification!.body);
        print('delivery: ${message.data["delivery"]}');
        print('deliverystatus: ${message.data["deliverystatus"]}');
        print('type: ${message.data["type"]}');
      }
      LocalNotificationService.display(message);
    });

    // only work when the app is open and also in background,
    // and user taps on the notification.
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      final routeFromMessage = message.data['route'];
      print('$routeFromMessage');
      Get.toNamed('/' + routeFromMessage);
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: [
            DrHomePage(),
            DrPatientListPage(),
            DrProfilePage(),
          ],
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade100,
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          child: NavigationBar(
            height: 60,
            backgroundColor: Colors.blue.shade50,
            selectedIndex: controller.tabIndex,
            onDestinationSelected: (Index) =>
                setState(() => controller.tabIndex = Index),
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.list),
                  selectedIcon: Icon(Icons.book),
                  label: 'Patient List'),
              NavigationDestination(
                  icon: Icon(Icons.person),
                  selectedIcon: Icon(Icons.person),
                  label: 'Profile'),
            ],
          ),
        ),
      );
}
