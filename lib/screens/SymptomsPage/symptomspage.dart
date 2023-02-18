import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/SymptomsPage/controller/symptoms_controller.dart';
import 'package:kairohealth/screens/doctor_list/kairodoctors.dart';
import 'package:kairohealth/widgets/custom_text.dart';
import 'package:kairohealth/widgets/item_disease.dart';

class SymptomsPage extends StatefulWidget {
  const SymptomsPage({super.key});

  @override
  State<SymptomsPage> createState() => _SymptomsPageState();
}

class _SymptomsPageState extends State<SymptomsPage> {
  final controller = Get.find<SymptomsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Symptoms'),
        centerTitle: true,
      ),
      body: Obx(() {
        return controller.isLoading.isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : controller.diseaseList.isEmpty
                ? const Center(
                    child: CustomText(text: 'Empty List'),
                  )
                : GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(10.0),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                    ),
                    itemBuilder: (context, index) {
                      return ItemDisease(
                        image: controller.diseaseList[index].photo.toString(),
                        title: controller.diseaseList[index].disease.toString(),
                        onClick: () {
                          controller.getDoctorListBySymptomsList(
                              controller.diseaseList[index].id.toString());
                        },
                      );
                    },
                    itemCount: controller.diseaseList.length,
                  );
      }),
    );
  }
}

final List<Map<String, dynamic>> listsymptoms = [
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/3954/3954126.png',
    'title': 'Cough',
  },
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/3781/3781954.png',
    'title': 'Fever',
  },
  {
    'image':
        'https://cdn.pixabay.com/photo/2020/10/10/18/27/woman-5643926_1280.png',
    'title': 'Headache',
  },
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/2746/2746593.png',
    'title': 'Sore throat',
  },
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/3954/3954126.png',
    'title': 'Cough',
  },
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/3781/3781954.png',
    'title': 'Fever',
  },
];
