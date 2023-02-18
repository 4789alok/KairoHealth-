import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/kairo_doctors/Patient_List/controller/patient_list_controller.dart';
import 'package:kairohealth/widgets/custom_text.dart';
import 'package:kairohealth/widgets/patient_tile.dart';

class DrPatientListPage extends GetView<DrPatientListController> {
  DrPatientListPage({super.key}) {
    controller.hitApi();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DrPatientListController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent.shade700,
        title: const Text('Patient List'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Obx(() {
        return controller.isLoading.isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : controller.patientList.isEmpty
                ? const Center(
                    child: CustomText(text: 'Empty List'),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.patientList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return PatientTile(
                        name: controller.patientList[index].name.toString(),
                        email: controller.patientList[index].email.toString(),
                        // gender: controller.patientList[index].patient_gender
                        //     .toString(),
                        photo: controller.patientList[index].photo.toString(),
                        onClick: () =>
                            Get.toNamed('/patientDetails', arguments: [
                          {
                            'userToken':
                                controller.patientList[index].token.toString(),
                          }
                        ]),
                      );
                    },
                  );
      }),
    );
  }
}
