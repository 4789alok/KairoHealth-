import 'package:flutter/material.dart';
import 'package:kairohealth/screens/KairoMedical/Home/home.dart';
import 'package:kairohealth/screens/KairoMedical/PatientDetails/patientlist.dart';
import 'package:kairohealth/screens/KairoMedical/Profile/profilepage.dart';
import 'package:kairohealth/screens/kairo_doctors/Patient_List/patientlist.dart';

class MedicalDeshboardPage extends StatefulWidget {
  const MedicalDeshboardPage({Key? key}) : super(key: key);

  @override
  _MedicalDeshboardPageState createState() => _MedicalDeshboardPageState();
}

class _MedicalDeshboardPageState extends State<MedicalDeshboardPage> {
  int Index = 0;
  final Screens = [
    MedicalHomePage(),
    PatientListPage(),
    MedicalProfilePage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Screens[Index],
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
            selectedIndex: Index,
            onDestinationSelected: (Index) =>
                setState(() => this.Index = Index),
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.list),
                  selectedIcon: Icon(Icons.list),
                  label: 'Patient List'),
              NavigationDestination(
                  icon: Icon(Icons.person),
                  selectedIcon: Icon(Icons.person),
                  label: 'Profile'),
              // NavigationDestination(
              //     icon: Icon(
              //       Icons.email_outlined,
              //     ),
              //     selectedIcon: Icon(
              //       Icons.email,
              //     ),
              //     label: 'Lab tests'),
              // NavigationDestination(
              //     icon: Icon(
              //       Icons.school_outlined,
              //     ),
              //     selectedIcon: Icon(
              //       Icons.school,
              //     ),
              //     label: 'Records')
            ],
          ),
        ),
      );
}
