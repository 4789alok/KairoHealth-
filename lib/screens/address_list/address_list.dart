import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kairohealth/screens/address_list/controller/address_list_controller.dart';
import 'package:kairohealth/widgets/custom_text.dart';

class AddressListPage extends StatefulWidget {
  const AddressListPage({super.key});

  @override
  State<AddressListPage> createState() => _AddressListPageState();
}

class _AddressListPageState extends State<AddressListPage> {
  final controller = Get.find<AddressListController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'ADDRESS BOOK',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        return controller.isLoading.isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  Expanded(
                    child: controller.addressList.isEmpty
                        ? const Center(
                            child: CustomText(text: "Empty List"),
                          )
                        : SingleChildScrollView(
                            child: ListView.builder(
                                itemCount: controller.addressList.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(10),
                                            margin: const EdgeInsets.all(10),
                                            // height: 200,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.shade400
                                                      .withOpacity(0.5),
                                                  spreadRadius: 0.5,
                                                  blurRadius: 1,
                                                  offset: const Offset(0, 0.3),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Shivash',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.blueGrey
                                                              .shade700),
                                                    ),
                                                    Text(
                                                      '(${controller.addressList[index].type})',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.blueGrey
                                                              .shade700),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 6.0),
                                                Text(
                                                  "${controller.addressList[index].landmark}, ${controller.addressList[index].address}, ${controller.addressList[index].city}, ${controller.addressList[index].state} -${controller.addressList[index].pincode}",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors
                                                          .blueGrey.shade700),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    IconButton(
                                                      icon: const Icon(
                                                        Icons.edit,
                                                        size: 30,
                                                        color: Colors.blueGrey,
                                                      ),
                                                      onPressed: () {
                                                        Get.toNamed(
                                                                '/addAddress',
                                                                arguments: [
                                                              {
                                                                'route': 'edit',
                                                                'addressID': controller
                                                                    .addressList[
                                                                        index]
                                                                    .id
                                                                    .toString(),
                                                              }
                                                            ])!
                                                            .then((value) =>
                                                                controller
                                                                    .hitApi());
                                                      },
                                                    ),
                                                    const Text(
                                                      '|',
                                                      style: TextStyle(
                                                          fontSize: 35,
                                                          color:
                                                              Colors.blueGrey),
                                                    ),
                                                    IconButton(
                                                      icon: const Icon(
                                                        Icons.delete,
                                                        size: 30,
                                                        color: Colors.blueGrey,
                                                      ),
                                                      onPressed: () {
                                                        dialog(
                                                            context,
                                                            controller
                                                                .addressList[
                                                                    index]
                                                                .id
                                                                .toString());
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                }),
                          ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.amber.shade600),
                    onPressed: () {
                      Get.toNamed('/addAddress', arguments: [
                        {
                          'route': 'add',
                          'addressID': '',
                        }
                      ])!
                          .then((value) => controller.hitApi());
                    },
                    child: const Text(
                      'ADD NEW ADDRESS',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              );
      }),
    );
  }

  // We are not providing any services at your location right now. We will reach you soon.
  dialog(BuildContext context, String id) {
    showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          title: CustomText(
              text: 'Message',
              style: GoogleFonts.oswald(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              )),
          content: CustomText(
            text: 'Are you sure you want to delete this address?',
            style: GoogleFonts.sourceSansPro(
              // fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          actions: [
            OutlinedButton(
                // style: ElevatedButton.styleFrom(primary: Colors.grey),
                onPressed: () {
                  Get.back();
                  // Get.toNamed('/addressPage');
                  // Navigator.pop(context);
                },
                child: Text(
                  'No',
                  style: TextStyle(
                    color: Colors.blue.shade900,
                  ),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  // Write code to delete item
                  controller.hitRemoveAddressApi(id);
                },
                child: const Text(
                  'Delete',
                )),
          ],
        );
      }),
    );
  }
}
