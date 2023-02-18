import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kairohealth/screens/Upload_Image/controller/upload_image_controller.dart';
import 'package:kairohealth/widgets/custom_text.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  File? image;
  final controller = Get.find<UploadImageController>();
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print("Faild to pick image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          controller.route,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(14),
              width: double.infinity,
              // height: 230,
              color: Colors.green.shade400,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      pickImage(ImageSource.gallery);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),

                      padding: const EdgeInsets.all(20),

                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(80)),
                      ),
                      child: Icon(
                        Icons.file_upload_outlined,
                        color: Colors.blue.shade900,
                        size: 50,
                      ),
                      // height: 60,
                    ),
                  ),
                  const Text(
                    "Upload a photo of your Report",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        // fontFamily: "Times New Roman",
                        fontWeight: FontWeight.bold),
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(top: 12),
                  //   alignment: Alignment.centerLeft,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(10),
                  //     boxShadow: const [],
                  //   ),
                  //   //  height: 60,
                  //   child: const TextField(
                  //     keyboardType: TextInputType.number,
                  //     style: TextStyle(color: Colors.black87),
                  //     decoration: InputDecoration(
                  //       border: InputBorder.none,
                  //       contentPadding: EdgeInsets.only(top: 14),
                  //       prefixIcon: Icon(
                  //         Icons.medication,
                  //         color: Colors.blue,
                  //       ),
                  //       hintText: 'How many days',
                  //       hintStyle: TextStyle(color: Colors.black38),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: const BorderRadius.all(Radius.circular(6)),
              ),
              margin: const EdgeInsets.all(10),
              padding:
                  const EdgeInsets.only(top: 4, bottom: 8, left: 4, right: 4),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    //  padding: EdgeInsets.all(10),
                    margin: const EdgeInsets.all(16),
                    decoration: image != null
                        ? BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6)),
                            image: DecorationImage(
                                image: FileImage(image!), fit: BoxFit.cover))
                        : const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.slntechnologies.com/wp-content/uploads/2017/08/ef3-placeholder-image.jpg"),
                                fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print('image fetch');
                if (image != null) {
                  controller.hitApi(image!);
                } else {
                  const SnackBar(
                      content: CustomText(text: 'Please Upload Image'));
                }
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                // height: 60,

                child: const Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      // fontFamily: "Times New Roman",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
