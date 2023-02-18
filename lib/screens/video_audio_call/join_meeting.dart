import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/widgets/custom_text.dart';

class JoinMeeting extends StatelessWidget {
  const JoinMeeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            height: MediaQuery.of(context).padding.top,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 0,
                  child: GestureDetector(
                    onTap: () => Get.back(),
                    child: CustomText(
                      text: 'Cancel',
                      style: TextStyle(
                          // color: active,

                          ),
                    ),
                  ),
                ),
                const CustomText(
                  text: 'Join a Meeting',
                  style: TextStyle(
                    // color: active,

                    // color: dark,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  align: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: 'Join with a personal link Name',
                  // size: 14,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: grey200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomText(
                  text: 'Enter the given meeting id to join the meeting',
                  // size: 14,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: grey200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomText(
                  text:
                      'By clicking the\'Join\'.you agree to our Terms of services and Privacy Statement.',
                  // size: 14,
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  // onTap: () => Get.toNamed('/videoCall'),
                  onTap: () => Get.toNamed('/audioCall'),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: active,
                    ),
                    child: CustomText(
                      text: 'Join'.toUpperCase(),
                      align: TextAlign.center,
                      // color: white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
