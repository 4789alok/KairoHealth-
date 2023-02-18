import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/model/popup_response.dart';
import 'package:kairohealth/models/index.dart';
import 'package:kairohealth/screens/add_address/controller/add_address_controller.dart';
import 'package:kairohealth/widgets/custom_text.dart';

enum AddressType { select, home, office }

class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final controller = Get.find<AddAddressController>();

  AddressType _addressType = AddressType.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        // appBar: AppBarWidget('Add Addresses'),
        appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: const CustomText(
              text: "Add Address",
            )),
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
                            child: Text('mobile No.',
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
                              maxLength: 10,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  // labelText: 'Enter Name',
                                  counterText: '',
                                  hintText: 'Please enter mobile no',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  )),
                              keyboardType: TextInputType.phone,
                              controller: controller.mobileController,
                              onSaved: (value) {
                                controller.phone = value!;
                              },
                              validator: (value) {
                                return controller.validatePhone(value!);
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
                            child: Text('Landmark',
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
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  counterText: '',
                                  // labelText: 'Enter Name',
                                  hintText: 'Please select landmark',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  )),
                              keyboardType: TextInputType.text,
                              controller: controller.landMarkController,
                              onSaved: (value) {
                                controller.landMark = value!;
                              },
                              validator: (value) {
                                return controller.validateLandmark(value!);
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 8,
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
                            child: Text('Pin Code',
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
                              maxLength: 6,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  counterText: '',
                                  // labelText: 'Enter Name',
                                  hintText: 'Please enter pin code',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  )),
                              keyboardType: TextInputType.phone,
                              controller: controller.pinController,
                              onSaved: (value) {
                                controller.pinCode = value!;
                              },
                              validator: (value) {
                                return controller.validatePinCode(value!);
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8, left: 8),
                            child: Text('Type of address',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Radio(
                                        // activeColor: active,
                                        value: AddressType.home,
                                        groupValue: _addressType,
                                        onChanged: (AddressType? value) {
                                          setState(() {
                                            _addressType = value!;
                                            controller.addressType = "Home";
                                          });
                                        },
                                      ),
                                      const CustomText(text: 'Home'),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Radio(
                                        // activeColor: active,
                                        value: AddressType.office,
                                        groupValue: _addressType,
                                        onChanged: (AddressType? value) {
                                          setState(() {
                                            _addressType = value!;
                                            controller.addressType = "Office";
                                          });
                                        },
                                      ),
                                      const CustomText(text: 'Office'),
                                    ],
                                  ),
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
                              controller.hitApi();
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
                                'Save',
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
        _getCityResponse(_data.district.toString(), fieldAddress);
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

  void _getCityResponse(String response, String fieldAddress) async {
    final newResponse =
        PopUpResponse(response: response, address: fieldAddress);
    print("response back: ${newResponse.response}");

    if (newResponse.address.toString() == "city") {
      controller.cityController.text = newResponse.response;
    }
    controller.response.value = newResponse.response;
  }
}
