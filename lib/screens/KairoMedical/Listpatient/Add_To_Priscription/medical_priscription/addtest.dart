import 'package:flutter/material.dart';
import 'package:kairohealth/models/testListDetails.dart';
import 'package:kairohealth/widgets/custom_text.dart';

class AddTest extends StatefulWidget {
  const AddTest({super.key});

  @override
  State<AddTest> createState() => _AddTestState();
}

class _AddTestState extends State<AddTest> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  // final controller = Get.find<DrPrescriptionTestController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Write Prescription',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8, left: 8),
                  child: Text('Medicine',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    onTap: () => _showSearchablePopup(
                        context: context,
                        title: 'Select Test',
                        fieldAddress: 'state'),
                    readOnly: true,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.arrow_drop_down_rounded),
                        border: InputBorder.none,
                        counterText: '',
                        // labelText: 'Enter Name',
                        hintText: 'Please select test',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        )),
                    keyboardType: TextInputType.phone,
                    // controller: controller.testController,
                    // onSaved: (value) {
                    //   controller.testName.value = value!;
                    // },
                    // validator: (value) {
                    //   return controller.validateMedicine(value!);
                    // },
                  ),
                ),
                Row(
                  children: [
                    //  Checkbox(
                    //   value: controller.urin,
                    //    onChanged: (bool? value) {
                    //     setState(() {
                    //       controller.urin = value!;
                    //     });
                    //  },
                    //  ),
                    CustomText(text: 'Urni Test'),
                  ],
                ),
                Row(
                  children: [
                    // Checkbox(
                    //   value: controller.blood,
                    //   onChanged: (bool? value) {
                    //     setState(() {
                    //       controller.blood = value!;
                    //     });
                    //   },
                    // ),
                    CustomText(text: 'Blood Test'),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              final isValid = formKey.currentState!.validate();
              if (!isValid) {
                return;
              }
              formKey.currentState!.save();
              // final data = TestData(
              //   testName: controller.testName.value,
              //   urin: controller.urin,
              //   blood: controller.blood,
              //   testID: controller.testId.toString(),
              // );
              //Get.back(result: data);
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.amber,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: const Text(
                'Submit',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  searchablePopupList({required String title, required String fieldAddress}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Container(
          //   margin: const EdgeInsets.symmetric(horizontal: 8.0),
          //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(20),
          //     color: Colors.white,
          //   ),
          //   child: Row(
          //     children: [
          //       const Icon(Icons.search),
          //       const SizedBox(
          //         width: 6,
          //       ),
          //       Expanded(
          //         child: TextFormField(
          //           onChanged: (value) => controller.getGeo(value),
          //           style: const TextStyle(color: Colors.black),
          //           decoration: const InputDecoration(
          //             border: InputBorder.none,
          //             hintText: 'Search here',
          //           ),
          //           controller: controller.searchController,
          //           onSaved: (value) {
          //             controller.search = value!;
          //           },
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Expanded(
          //   child: Obx(() {
          //     return controller.dataList.isNotEmpty
          //         ? ListView.builder(
          //             padding: const EdgeInsets.only(top: 20.0),
          //             itemBuilder: (_, index) {
          //               return itemSearch(
          //                   controller.dataList[index], fieldAddress);
          //             },
          //             itemCount: controller.dataList.length,
          //           )
          //         : const Center(
          //             child: Text('Empty List'),
          //           );
          //     //If you want to show exeact result which you search
          //     // Column(
          //     //     crossAxisAlignment: CrossAxisAlignment.start,
          //     //     children: [
          //     //       Padding(
          //     //         padding: const EdgeInsets.symmetric(
          //     //             horizontal: 16.0, vertical: 20.0),
          //     //         child: Text(
          //     //           controller.searchController.text,
          //     //           style: const TextStyle(
          //     //             fontSize: 16,
          //     //           ),
          //     //         ),
          //     //       ),
          //     //       const Padding(
          //     //         padding: EdgeInsets.symmetric(
          //     //           horizontal: 16.0,
          //     //         ),
          //     //         child: Divider(),
          //     //       )
          //     //     ],
          //     //   ),
          //     // );
          //   }),
          // )
        ],
      ),
    );
  }

  void _showSearchablePopup(
      {required BuildContext context,
      required String title,
      required String fieldAddress}) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true, // only work on showModalBottomSheet function
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        builder: (_) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: SizedBox(
              height: 350,
              child: searchablePopupList(
                title: title,
                fieldAddress: fieldAddress,
              ),
            ),
          );
        });
  }

  itemSearch(TestListDetails _data, String fieldAddress) {
    return GestureDetector(
      // onTap: () {
      //   _getResponse(_data.category.toString(), fieldAddress, _data);
      //   Get.back();
      // },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              _data.category.toString(),
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Divider(),
          )
        ],
      ),
    );
  }

  // void _getResponse(
  //     String response, String fieldAddress, TestListDetails data) async {
  //   final newResponse =
  //       PopUpResponse(response: response, address: fieldAddress);
  //   print("response back: ${newResponse.response}");

  //   if (newResponse.address.toString() == "state") {
  //     controller.testController.text = newResponse.response;
  //     controller.testId.value = data.id.toString();
  //   }
  //   controller.response.value = newResponse.response;
  // }
}
