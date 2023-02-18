import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/model/popup_response.dart';
import 'package:kairohealth/models/index.dart';
import 'package:kairohealth/screens/kairo_doctors/add_prescription/controller/add_prescription_controller.dart';

class AddPrescriptionPage extends StatefulWidget {
  const AddPrescriptionPage({super.key});

  @override
  State<AddPrescriptionPage> createState() => _AddPrescriptionPageState();
}

class _AddPrescriptionPageState extends State<AddPrescriptionPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final controller = Get.find<AddPrescriptionController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.tealAccent.shade700,
          title: const Text(
            'Add Prescription',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Obx(() {
          return controller.isLoading.isTrue
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 16, left: 8),
                            child: Text('Name',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  // labelText: 'Enter Name',
                                  hintText: 'Please enter name',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  )),
                              controller: controller.nameController,
                              onSaved: (value) {
                                controller.name = value!;
                              },
                              validator: (value) {
                                return controller.validateName(value!);
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8, left: 8),
                            child: Text('Age',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextFormField(
                              maxLength: 3,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  // labelText: 'Enter Name',
                                  counterText: '',
                                  hintText: 'Please enter age',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  )),
                              keyboardType: TextInputType.phone,
                              controller: controller.ageController,
                              onSaved: (value) {
                                controller.age = value!;
                              },
                              validator: (value) {
                                return controller.validateAge(value!);
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8, left: 8),
                            child: Text('Address',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  // labelText: 'Enter Name',
                                  hintText: 'Please enter your Address',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  )),
                              keyboardType: TextInputType.multiline,
                              maxLines: 5,
                              controller: controller.addressController,
                              onSaved: (value) {
                                controller.address = value!;
                              },
                              validator: (value) {
                                return controller.validateAddress(value!);
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8, left: 8),
                            child: Text('State',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
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
                                  title: 'Select Place',
                                  fieldAddress: 'state'),
                              readOnly: true,
                              decoration: const InputDecoration(
                                  suffixIcon:
                                      Icon(Icons.arrow_drop_down_rounded),
                                  border: InputBorder.none,
                                  counterText: '',
                                  // labelText: 'Enter Name',
                                  hintText: 'Please select state',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  )),
                              keyboardType: TextInputType.phone,
                              controller: controller.stateController,
                              onSaved: (value) {
                                controller.state = value!;
                              },
                              validator: (value) {
                                return controller.validateState(value!);
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8, left: 8),
                            child: Text('City',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.only(left: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextFormField(
                              onTap: () => _showSearchableCityPopup(
                                  context: context,
                                  title: 'Select Place',
                                  fieldAddress: 'city'),
                              readOnly: true,
                              decoration: const InputDecoration(
                                  suffixIcon:
                                      Icon(Icons.arrow_drop_down_rounded),
                                  border: InputBorder.none,
                                  counterText: '',
                                  // labelText: 'Enter Name',
                                  hintText: 'Please select city',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  )),
                              keyboardType: TextInputType.phone,
                              controller: controller.cityController,
                              onSaved: (value) {
                                controller.city = value!;
                              },
                              validator: (value) {
                                return controller.validateCity(value!);
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8, left: 8),
                            child: Text('Gender',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextFormField(
                              // maxLength: 6,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  counterText: '',
                                  // labelText: 'Enter Name',
                                  hintText: 'Please enter gender',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  )),
                              keyboardType: TextInputType.text,
                              controller: controller.genderController,
                              onSaved: (value) {
                                controller.gender = value!;
                              },
                              validator: (value) {
                                return controller.validateGender(value!);
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8, left: 8),
                            child: Text('Advice',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  // labelText: 'Enter Name',
                                  hintText: 'Please enter your Advice',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  )),
                              keyboardType: TextInputType.multiline,
                              maxLines: 5,
                              controller: controller.adviceController,
                              onSaved: (value) {
                                controller.advice = value!;
                              },
                              validator: (value) {
                                return controller.validateAdvice(value!);
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              final isValid = formKey.currentState!.validate();
                              if (!isValid) {
                                return;
                              }
                              formKey.currentState!.save();
                              Get.toNamed('/drPrescriptionReport', arguments: [
                                {
                                  'name': controller.name,
                                  'age': controller.age,
                                  'address': controller.address,
                                  'gender': controller.gender,
                                  'state': controller.stateID,
                                  'city': controller.cityID,
                                  'advice': controller.advice,
                                  'patientID': controller.patientID,
                                }
                              ]);
                            },
                            child: Container(
                              width: double.maxFinite,
                              padding: const EdgeInsets.all(14),
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: const Text(
                                'Next',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
        }));
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
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
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

  void _showSearchableCityPopup(
      {required BuildContext context,
      required String title,
      required String fieldAddress}) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true, // only work on showModalBottomSheet function
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        builder: (_) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: SizedBox(
              height: 350,
              child: searchableCityPopupList(
                title: title,
                fieldAddress: fieldAddress,
              ),
            ),
          );
        });
  }

  choiceList(List<String> addressType) {
    _buildChoiceList() {
      List<Widget> choices = [];
      addressType.forEach((item) {
        choices.add(Container(
          padding: const EdgeInsets.all(2.0),
          child: ChoiceChip(
            label: Text(item),
            labelStyle: const TextStyle(color: Colors.black, fontSize: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
            selectedColor: Theme.of(context).primaryColor.withOpacity(0.4),
            selected: controller.addressType == item,
            onSelected: (selected) {
              controller.addressType = item;
            },
          ),
        ));
      });
      return choices;
    }

    return Wrap(
      children: _buildChoiceList(),
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
          Expanded(
            child: Obx(() {
              return controller.stateList.isNotEmpty
                  ? ListView.builder(
                      padding: const EdgeInsets.only(top: 20.0),
                      itemBuilder: (_, index) {
                        return itemSearch(
                            controller.stateList[index], fieldAddress);
                      },
                      itemCount: controller.stateList.length,
                    )
                  : const Center(
                      child: Text('Empty List'),
                    );
              //If you want to show exeact result which you search
              // Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.symmetric(
              //             horizontal: 16.0, vertical: 20.0),
              //         child: Text(
              //           controller.searchController.text,
              //           style: const TextStyle(
              //             fontSize: 16,
              //           ),
              //         ),
              //       ),
              //       const Padding(
              //         padding: EdgeInsets.symmetric(
              //           horizontal: 16.0,
              //         ),
              //         child: Divider(),
              //       )
              //     ],
              //   ),
              // );
            }),
          )
        ],
      ),
    );
  }

  itemSearch(StateDetails _data, String fieldAddress) {
    return GestureDetector(
      onTap: () {
        _getResponse(_data.name.toString(), fieldAddress, _data);
        Get.back();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              _data.name.toString(),
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

  void _getResponse(
      String response, String fieldAddress, StateDetails data) async {
    final newResponse =
        PopUpResponse(response: response, address: fieldAddress);
    print("response back: ${newResponse.response}");

    if (newResponse.address.toString() == "state") {
      controller.stateController.text = newResponse.response;
      controller.stateID = data.id.toString();
      controller.getCityList();
    }
    controller.response.value = newResponse.response;
  }

  searchableCityPopupList(
      {required String title, required String fieldAddress}) {
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
          Expanded(
            child: Obx(() {
              return controller.cityList.isNotEmpty
                  ? ListView.builder(
                      padding: const EdgeInsets.only(top: 20.0),
                      itemBuilder: (_, index) {
                        return itemCitySearch(
                            controller.cityList[index], fieldAddress);
                      },
                      itemCount: controller.cityList.length,
                    )
                  : const Center(
                      child: Text('Empty List'),
                    );
            }),
          )
        ],
      ),
    );
  }

  itemCitySearch(CityDetails _data, String fieldAddress) {
    return GestureDetector(
      onTap: () {
        _getCityResponse(_data.district.toString(), fieldAddress, _data);
        Get.back();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              _data.district.toString(),
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

  void _getCityResponse(
      String response, String fieldAddress, CityDetails data) async {
    final newResponse =
        PopUpResponse(response: response, address: fieldAddress);
    print("response back: ${newResponse.response}");

    if (newResponse.address.toString() == "city") {
      controller.cityController.text = newResponse.response;
      controller.cityID = data.id.toString();
    }
    controller.response.value = newResponse.response;
  }
}
