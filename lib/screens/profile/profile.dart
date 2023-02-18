import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/profile/controller/profile_controller.dart';
import 'package:kairohealth/widgets/custom_text.dart';
import 'package:kairohealth/widgets/profile_tiles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final controller = Get.find<ProfilePageController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Profile Page',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Obx(() {
        return controller.isLoading.isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  SizedBox(
                    height: 320,
                    // color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: (controller.image.value == '')
                              ? const CircleAvatar(
                                  radius: 60.0,
                                  backgroundImage:
                                      AssetImage("images/avatar.png"),
                                )
                              : CircleAvatar(
                                  radius: 60.0,
                                  backgroundImage:
                                      NetworkImage(controller.image.value),
                                ),
                        ),
                        (controller.name.value == '')
                            ? const SizedBox.shrink()
                            : CustomText(
                                text: controller.name.value,
                                style: const TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                        (controller.name.value == '')
                            ? const SizedBox.shrink()
                            : const SizedBox(
                                height: 6,
                              ),
                        (controller.mobile.value == '')
                            ? const SizedBox.shrink()
                            : CustomText(
                                text: (controller.mobile == '')
                                    ? ''
                                    : '+91${controller.mobile.value}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                        (controller.email.value == '')
                            ? const SizedBox.shrink()
                            : CustomText(
                                text: controller.email.value,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/editProfile')!
                                .then((value) => controller.hitApi());
                          },
                          child: CustomText(
                            text: 'Edit Profile',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue.shade900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey.shade200,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          ProfileTile(
                            title: 'Manage Family Members',
                            onClick: () {
                              Get.toNamed('/familyList');
                            },
                            frontIcon: Icons.person,
                            endIcon: Icons.arrow_forward_ios_rounded,
                          ),
                          ProfileTile(
                            title: 'My Addresses',
                            onClick: () {
                              Get.toNamed('/addressList');
                            },
                            frontIcon: Icons.location_on,
                            endIcon: Icons.arrow_forward_ios_rounded,
                          ),
                          ProfileTile(
                            title: 'My Appointments',
                            onClick: () {
                              // Get.toNamed('/addressList');
                            },
                            frontIcon: Icons.schedule,
                            endIcon: Icons.arrow_forward_ios_rounded,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
      }),
    );
  }
}
