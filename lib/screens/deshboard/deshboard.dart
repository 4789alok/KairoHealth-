import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/consult/consultpage.dart';
import 'package:kairohealth/screens/deshboard/controller/dashboard_controller.dart';
import 'package:kairohealth/screens/home/homepage.dart';
import 'package:kairohealth/screens/lab_test/labtestpage.dart';
import 'package:kairohealth/screens/medicines/medicinespage.dart';
import 'package:kairohealth/screens/records/recordspage.dart';
import 'package:kairohealth/services/local_notification_service.dart';

class DeshboardPage extends StatefulWidget {
  const DeshboardPage({Key? key}) : super(key: key);

  @override
  _DeshboardPageState createState() => _DeshboardPageState();
}

class _DeshboardPageState extends State<DeshboardPage> {
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
  Widget build(BuildContext context) {
    return GetBuilder<DeshboardController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: [
            HomePage(),
            ConsultPage(),
            MedicinesPage(),
            LabTestPage(),
            const RecordsPage(),
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
                  icon: Icon(Icons.book_outlined),
                  selectedIcon: Icon(Icons.book),
                  label: 'Consult'),
              NavigationDestination(
                  icon: Icon(Icons.request_page_outlined),
                  selectedIcon: Icon(Icons.request_page),
                  label: 'Medicines'),
              NavigationDestination(
                  icon: Icon(
                    Icons.email_outlined,
                  ),
                  selectedIcon: Icon(
                    Icons.email,
                  ),
                  label: 'Lab tests'),
              NavigationDestination(
                  icon: Icon(
                    Icons.school_outlined,
                  ),
                  selectedIcon: Icon(
                    Icons.school,
                  ),
                  label: 'Records')
            ],
          ),
        ),
      );
    });
  }
}
