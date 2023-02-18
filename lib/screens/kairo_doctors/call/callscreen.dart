import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/kairo_doctors/home/homepage.dart';
import 'package:speech_to_text/speech_to_text.dart' as stts;

class CallScreenPage extends StatefulWidget {
  const CallScreenPage({super.key});

  @override
  State<CallScreenPage> createState() => _CallScreenPageState();
}

class _CallScreenPageState extends State<CallScreenPage> {
  var _speechToText = stts.SpeechToText();
  bool islisteing = false;
  String text = "Please Press the button for speaking.";
  void listen() async {
    if (!islisteing) {
      bool available = await _speechToText.initialize(
        onStatus: (status) => print("$status"),
        onError: (errorNotification) => print("$errorNotification"),
      );
      if (available) {
        setState(() {
          islisteing = true;
        });
        _speechToText.listen(
          onResult: (result) => setState(() {
            text = result.recognizedWords;
          }),
        );
      }
    } else {
      setState(() {
        islisteing = false;
      });
      _speechToText.stop();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _speechToText = stts.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 0.0),
        child: AvatarGlow(
          animate: islisteing,
          repeat: true,
          endRadius: 80,
          glowColor: Colors.blue,
          duration: const Duration(milliseconds: 1000),
          child: FloatingActionButton(
            backgroundColor: Colors.blue.shade100,
            onPressed: () {
              listen();
            },
            child: Icon(
              islisteing ? Icons.mic : Icons.mic_none,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 500,
                    width: 500,
                    child: const ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      child: Image(
                        image: NetworkImage(
                            'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Get.toNamed('/drHomePage');
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 40,
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue.shade100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.call,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 40,
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue.shade100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.video_call,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        child: const Text(
                          'I hope you had a good visit let me connect you with your pharmacist',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        child: const Image(
                          image: NetworkImage(
                              'https://nisargahospital.in/wp-content/uploads/2021/08/Dr-Jithesh-P.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: text,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  IconButton(
                    color: Colors.black38,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.emoji_emotions_outlined,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    color: Colors.black38,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.attach_file,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
