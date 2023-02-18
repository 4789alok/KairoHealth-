import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/constent.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  // late final AnimationController _controller =
  //     AnimationController(duration: const Duration(seconds: 3), vsync: this)
  //       ..repeat();
  // @override
  // void dispose() {
  //   super.dispose();
  //   _controller.dispose();
  // }

  void initState() {
    // TODO: implement initState
    super.initState();
    boxStroge.writeIfNull('isLogedIn', false);
    // boxStroge.writeIfNull('role', '9');
    Timer(const Duration(seconds: 3), () {
      checkiflogged();
    });
  }

  // _navigatetohome() async {
  //   await Future.delayed(
  //     Duration(milliseconds: 1500),
  //     (() {}),
  //   );
  //
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: const Center(
                child: Image(
                  image: AssetImage('./images/health.png'),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'KAIROHEALTH',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checkiflogged() {
    print("Role:${boxStroge.read('role')}");
    boxStroge.read('isLogedIn')
        ? getRoute(
            boxStroge.read(
              'role',
            ),
          )
        : Get.offNamed('/login');
  }

  void getRoute(String role) {
    if (role == "6") {
      Get.offAllNamed('/deshboard');
    } else if (role == "4") {
      Get.offAllNamed('/doctorDashboard');
    } else if (role == "3") {
      Get.offAllNamed('/phDashboard');
    }
    // else if (role == "Laboratory") {
    //   return "5";
    // } else if (role == "Patient") {
    //   return "6";
    // }
    else {
      Get.offAllNamed('/deshboard');
    }
  }
}
