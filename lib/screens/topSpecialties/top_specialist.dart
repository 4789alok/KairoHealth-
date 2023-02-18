import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/topSpecialties/controller/top_specialist_controller.dart';
import 'package:kairohealth/widgets/custom_text.dart';
import 'package:kairohealth/widgets/item_category.dart';

class TopSpecialistCategory extends StatefulWidget {
  const TopSpecialistCategory({super.key});

  @override
  State<TopSpecialistCategory> createState() => _TopSpecialistCategoryState();
}

class _TopSpecialistCategoryState extends State<TopSpecialistCategory> {
  final controller = Get.find<TopSpecialistCategoryController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(text: 'Top Specialties'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Obx(() {
        return controller.isLoading.isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(4.0),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return ItemCategory(
                    image: controller.dataList[index].photo.toString(),
                    title: controller.dataList[index].specialization.toString(),
                    onClick: (() {
                      controller.getDoctorListList(
                          controller.dataList[index].id.toString());
                    }),
                  );
                },
                itemCount: controller.dataList.length,
              );
      }),
    );
  }
}
