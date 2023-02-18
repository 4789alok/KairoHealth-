import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/KairoMedical/Listpatient/Add_To_Priscription/addtopriscription.dart';
import 'package:kairohealth/screens/KairoMedical/Listpatient/audiolistpage.dart';

class AddPriscriptionAudioPage extends StatefulWidget {
  const AddPriscriptionAudioPage({super.key});

  @override
  State<AddPriscriptionAudioPage> createState() =>
      _AddPriscriptionAudioPageState();
}

class _AddPriscriptionAudioPageState extends State<AddPriscriptionAudioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        //elevation: 0.0,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(
              image: NetworkImage(
                  'https://cdn.pfizer.com/pfizercom/inline-images/Card-Image1.png?V_vheR62y0FLBTYjSNPTokDBE2Urc7bP'),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(
                      const AddToPriscriptionPage(),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(30),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey.withOpacity(0.5),
                      //     spreadRadius: 3,
                      //     blurRadius: 2,
                      //     offset: const Offset(0, 2),
                      //   ),
                      // ],
                    ),
                    child: const Center(
                      child: Text(
                        'Add Prescription',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const AudioListPage());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(30),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey.withOpacity(0.5),
                      //     spreadRadius: 3,
                      //     blurRadius: 2,
                      //     offset: const Offset(0, 2),
                      //   ),
                      // ],
                    ),
                    child: const Center(
                      child: Text(
                        'Audio',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
