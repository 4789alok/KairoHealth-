import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

class AudioConferencePage extends StatelessWidget {
  const AudioConferencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var roomID = Get.arguments[0]['roomID'];
    return Scaffold(
      body: SafeArea(
        child: ZegoUIKitPrebuiltVideoConference(
          appID: 289857249,
          appSign:
              "cb07571dfe271fa01b33f76ab777c00a3656710eb4df42c0d4829c8ad409b60f",
          userID: boxStroge.read('id').toString(),
          userName: boxStroge.read('name').toString(),
          conferenceID: roomID,
          config: ZegoUIKitPrebuiltVideoConferenceConfig(
            turnOnCameraWhenJoining: false,
            audioVideoViewConfig:
                ZegoPrebuiltAudioVideoViewConfig(showCameraStateOnView: false),
            topMenuBarConfig: ZegoTopMenuBarConfig(
              buttons: [ZegoMenuBarButtonName.showMemberListButton],
            ),
            bottomMenuBarConfig: ZegoBottomMenuBarConfig(
              buttons: [
                ZegoMenuBarButtonName.toggleMicrophoneButton,
                ZegoMenuBarButtonName.leaveButton,
                ZegoMenuBarButtonName.switchAudioOutputButton,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
