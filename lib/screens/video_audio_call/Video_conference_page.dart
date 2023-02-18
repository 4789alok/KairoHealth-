import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

class VideoConferencePage extends StatelessWidget {
  const VideoConferencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var roomID = Get.arguments[0]['roomID'];
    return Scaffold(
      body: SafeArea(
        child: ZegoUIKitPrebuiltVideoConference(
          appID: 472767206,
          appSign:
              "558fa7dd76c79e54d55739305feb7bfad814e6ed7315224fc2a0ec51e19be0dd",
          userID: boxStroge.read('id').toString(),
          userName: boxStroge.read('name').toString(),
          conferenceID: '123456',
          config: ZegoUIKitPrebuiltVideoConferenceConfig(),
        ),
      ),
    );
  }
}
