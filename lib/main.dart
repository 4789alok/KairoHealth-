import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kairohealth/screens/KairoMedical/Deshboard_Medical/ph_dashboard.dart';
import 'package:kairohealth/screens/SymptomsPage/binding/symptoms_binding.dart';
import 'package:kairohealth/screens/SymptomsPage/symptomspage.dart';
import 'package:kairohealth/screens/Upload_Image/binding/upload_image_binding.dart';
import 'package:kairohealth/screens/Upload_Image/upload_imagepage.dart';
import 'package:kairohealth/screens/add_address/add_address.dart';
import 'package:kairohealth/screens/add_address/binding/add_address_binding.dart';
import 'package:kairohealth/screens/address_list/address_list.dart';
import 'package:kairohealth/screens/address_list/binding/address_list_binding.dart';
import 'package:kairohealth/screens/auth/Registerpage.dart';
import 'package:kairohealth/screens/auth/binding/login_binding.dart';
import 'package:kairohealth/screens/auth/binding/otp_binding.dart';
import 'package:kairohealth/screens/auth/binding/register_binding.dart';
import 'package:kairohealth/screens/auth/login.dart';
import 'package:kairohealth/screens/auth/otp_page.dart';
import 'package:kairohealth/screens/consult/binding/consult_binding.dart';
import 'package:kairohealth/screens/consult/consultpage.dart';
import 'package:kairohealth/screens/doctor_list/binding/kairodoctors_binding.dart';
import 'package:kairohealth/screens/doctor_list/kairodoctors.dart';
import 'package:kairohealth/screens/deshboard/Search_Screen/searchScreen.dart';
import 'package:kairohealth/screens/deshboard/binding/dashboard_binding.dart';
import 'package:kairohealth/screens/deshboard/deshboard.dart';
import 'package:kairohealth/screens/family_list/add_family_member.dart';
import 'package:kairohealth/screens/family_list/binding/add_family_binding.dart';
import 'package:kairohealth/screens/family_list/binding/family_list_binding.dart';
import 'package:kairohealth/screens/family_list/family_list.dart';
import 'package:kairohealth/screens/home/binding/home_binding.dart';
import 'package:kairohealth/screens/home/homepage.dart';
import 'package:kairohealth/screens/kairo_doctors/Deshboard_Doctor/WritePrescriptionForMedicine/binding/writeprescriptionmedicine_binding.dart';
import 'package:kairohealth/screens/kairo_doctors/Deshboard_Doctor/WritePrescriptionForMedicine/writeprescriptionmedicine.dart';
import 'package:kairohealth/screens/kairo_doctors/Deshboard_Doctor/binding/dr_dashboard_binding.dart';
import 'package:kairohealth/screens/kairo_doctors/Deshboard_Doctor/deshboard.dart';
import 'package:kairohealth/screens/kairo_doctors/Patient_List/binding/patient_list_binding.dart';
import 'package:kairohealth/screens/kairo_doctors/Patient_List/patientlist.dart';
import 'package:kairohealth/screens/kairo_doctors/add_prescription/add_prescription.dart';
import 'package:kairohealth/screens/kairo_doctors/add_prescription/binding/add_prescription_binding.dart';
import 'package:kairohealth/screens/kairo_doctors/add_prescription/binding/prescription_report_binding.dart';
import 'package:kairohealth/screens/kairo_doctors/add_prescription/binding/writeprescriptionfortest_binding.dart';
import 'package:kairohealth/screens/kairo_doctors/add_prescription/prescriptionreport.dart';
import 'package:kairohealth/screens/kairo_doctors/add_prescription/writeprescriptionfortest.dart';
import 'package:kairohealth/screens/kairo_doctors/home/binding/home_binding.dart';
import 'package:kairohealth/screens/kairo_doctors/home/homepage.dart';
import 'package:kairohealth/screens/kairo_doctors/patient_details/binding/patient_details_binding.dart';
import 'package:kairohealth/screens/kairo_doctors/patient_details/patient_details.dart';
import 'package:kairohealth/screens/lab_test/binding/lab_test_binding.dart';
import 'package:kairohealth/screens/lab_test/labtestpage.dart';
import 'package:kairohealth/screens/medicines/binding/medicine_binding.dart';
import 'package:kairohealth/screens/medicines/medicinespage.dart';
import 'package:kairohealth/screens/prescription_list/binding/prescription_list_binding.dart';
import 'package:kairohealth/screens/prescription_list/prescriptions.dart';
import 'package:kairohealth/screens/profile/binding/edit_profile_binding.dart';
import 'package:kairohealth/screens/profile/binding/profile_binding.dart';
import 'package:kairohealth/screens/profile/edit_profile.dart';
import 'package:kairohealth/screens/profile/profile.dart';
import 'package:kairohealth/screens/splashscreen/splashscreen.dart';
import 'package:kairohealth/screens/topSpecialties/binding/top_specialist_binding.dart';
import 'package:kairohealth/screens/topSpecialties/top_specialist.dart';
import 'screens/video_audio_call/Video_conference_page.dart';

//Recive message when app is on background solution for on messgage
Future<void> backgroundHandler(RemoteMessage message) async {
  print(message.data.toString());
  print(message.notification!.title);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: [
        GetPage(
          name: '/splashScreen',
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: '/login',
          page: () => const SignIn(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: '/home',
          page: () => HomePage(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: '/medicinePage',
          page: () => MedicinesPage(),
          binding: MedicineBinding(),
        ),
        GetPage(
          name: '/labTestPage',
          page: () => LabTestPage(),
          binding: LabTestBinding(),
        ),
        GetPage(
          name: '/otpVerify',
          page: () => const OtpPage(),
          binding: OtpBinding(),
        ),
        GetPage(
          name: '/register',
          page: () => const RegisterPage(),
          binding: RegisterBinding(),
        ),
        GetPage(
          name: '/deshboard',
          page: () => const DeshboardPage(),
          binding: DeshboardBinding(),
        ),
        GetPage(
          name: '/topSpecialistCategory',
          page: () => const TopSpecialistCategory(),
          binding: TopSpecialistCategoryBinding(),
        ),
        GetPage(
          name: '/consultPAge',
          page: () => ConsultPage(),
          binding: ConsultBinding(),
        ),
        GetPage(
          name: '/symptomsPage',
          page: () => const SymptomsPage(),
          binding: SymptomsBinding(),
        ),
        GetPage(
          name: '/uploadImage',
          page: () => const UploadImage(),
          binding: UploadImageBinding(),
        ),
        GetPage(
          name: '/search',
          page: () => const SearchScreen(),
          // binding: LoginBinding(),
        ),
        GetPage(
          name: '/doctorListPage',
          page: () => const KairoDoctorsPage(),
          binding: DoctorPageBinding(),
        ),
        GetPage(
          name: '/addressList',
          page: () => const AddressListPage(),
          binding: AddressListBinding(),
        ),
        GetPage(
          name: '/familyList',
          page: () => const FamilyListPage(),
          binding: FamilyListBinding(),
        ),
        GetPage(
          name: '/addFamilyMember',
          page: () => const AddFamilyMemberPage(),
          binding: AddFamilyMemberBinding(),
        ),
        GetPage(
          name: '/addAddress',
          page: () => const AddAddress(),
          binding: AddAddressBinding(),
        ),
        GetPage(
          name: '/profile',
          page: () => const ProfilePage(),
          binding: ProfilePageBinding(),
        ),
        GetPage(
          name: '/editProfile',
          page: () => const EditProfile(),
          binding: EditProfileBinding(),
        ),
        GetPage(
          name: '/prescriptionList',
          page: () => const PrescriptionsPage(),
          binding: PrescriptionListBinding(),
        ),
        GetPage(
          name: '/joinMeeting',
          page: () => const VideoConferencePage(),
          // binding: PrescriptionListBinding(),
        ),

        //-----------------Doctor Dashboard------------------------

        GetPage(
          name: '/doctorDashboard',
          page: () => const DrDeshbardPage(),
          binding: DrDeshboardBinding(),
        ),
        GetPage(
          name: '/drPatientList',
          page: () => DrPatientListPage(),
          binding: DrPatientListBinding(),
        ),
        GetPage(
          name: '/drHomePage',
          page: () => DrHomePage(),
          binding: DrHomeBinding(),
        ),
        GetPage(
          name: '/patientDetails',
          page: () => const PatientDetailsPage(),
          binding: PatientDetailsBinding(),
        ),
        GetPage(
          name: '/drAddPrescription',
          page: () => const AddPrescriptionPage(),
          binding: AddPrescriptionBinding(),
        ),
        GetPage(
          name: '/drPrescriptionReport',
          page: () => const PrescriptionReport(),
          binding: PrescriptionReportBinding(),
        ),
        GetPage(
          name: '/drWritePrescription',
          page: () => const WritePrescriptionForTest(),
          binding: DrPrescriptionTestBinding(),
        ),
        GetPage(
          name: '/drWritePrescriptionMedicine',
          page: () => const WritePrescriptionForMedicine(),
          binding: DrPrescriptionMedicineBinding(),
        ),
        //-----------------Doctor Dashboard------------------------

        GetPage(
          name: '/phDashboard',
          page: () => const MedicalDeshboardPage(),
          // binding: PhDeshboardBinding(),
        ),
      ],
      initialRoute: '/splashScreen',
    );
  }
}


// class DeshboardPage extends StatefulWidget {
//   const DeshboardPage({Key? key}) : super(key: key);

//   @override
//   _DeshboardPageState createState() => _DeshboardPageState();
// }

// class _DeshboardPageState extends State<DeshboardPage> {
//   int Index = 0;
//   final Screens = const [
//     HomePage(),
//     ConsultPage(),
//     MedicinesPage(),
//     LabTestPage(),
//     RecordsPage(),
//   ];

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: Screens[Index],
//         bottomNavigationBar: NavigationBarTheme(
//           data: NavigationBarThemeData(
//             indicatorColor: Colors.blue.shade100,
//             labelTextStyle: MaterialStateProperty.all(
//               const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    
//             ),
//           ),
//           child: NavigationBar(
//             height: 60,
//             backgroundColor: Colors.blue.shade50,
//             selectedIndex: Index,
//             onDestinationSelected: (Index) =>
//                 setState(() => this.Index = Index),
//             destinations: const [
//               NavigationDestination(
//                   icon: Icon(Icons.home_outlined),
//                   selectedIcon: Icon(Icons.home),
//                   label: 'Home'),
//               NavigationDestination(
//                   icon: Icon(Icons.book_outlined),
//                   selectedIcon: Icon(Icons.book),
//                   label: 'Consult'),
//               NavigationDestination(
//                   icon: Icon(Icons.request_page_outlined),
//                   selectedIcon: Icon(Icons.request_page),
//                   label: 'Medicines'),
//               NavigationDestination(
//                   icon: Icon(
//                     Icons.email_outlined,
//                   ),
//                   selectedIcon: Icon(
//                     Icons.email,
//                   ),
//                   label: 'Lab tests'),
//               NavigationDestination(
//                   icon: Icon(
//                     Icons.school_outlined,
//                   ),
//                   selectedIcon: Icon(
//                     Icons.school,
//                   ),
//                   label: 'Records')
//             ],
//           ),
//         ),
//       );
// }
