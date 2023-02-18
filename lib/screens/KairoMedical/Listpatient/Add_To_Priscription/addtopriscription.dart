import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/KairoMedical/Listpatient/Add_To_Priscription/medical_priscription/mecdicalpriscription.dart';

class AddToPriscriptionPage extends StatefulWidget {
  const AddToPriscriptionPage({super.key});

  @override
  State<AddToPriscriptionPage> createState() => _AddToPriscriptionPageState();
}

class _AddToPriscriptionPageState extends State<AddToPriscriptionPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  //final controller = Get.find<AddPrescriptionController>();
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Add Priscription'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
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
                          // controller: controller.nameController,
                          // onSaved: (value) {
                          //   controller.name = value!;
                          // },
                          // validator: (value) {
                          //   return controller.validateName(value!);
                          // },
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
                          // controller: controller.ageController,
                          // onSaved: (value) {
                          //   controller.age = value!;
                          // },
                          // validator: (value) {
                          //   return controller.validateAge(value!);
                          // },
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
                          // controller: controller.addressController,
                          // onSaved: (value) {
                          //   controller.address = value!;
                          // },
                          // validator: (value) {
                          //   return controller.validateAddress(value!);
                          // },
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
                              suffixIcon: Icon(Icons.arrow_drop_down_rounded),
                              border: InputBorder.none,
                              counterText: '',
                              // labelText: 'Enter Name',
                              hintText: 'Please select state',
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              )),
                          keyboardType: TextInputType.phone,
                          // controller: controller.stateController,
                          // onSaved: (value) {
                          //   controller.state = value!;
                          // },
                          // validator: (value) {
                          //   return controller.validateState(value!);
                          // },
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
                              suffixIcon: Icon(Icons.arrow_drop_down_rounded),
                              border: InputBorder.none,
                              counterText: '',
                              // labelText: 'Enter Name',
                              hintText: 'Please select city',
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              )),
                          keyboardType: TextInputType.phone,
                          // controller: controller.cityController,
                          // onSaved: (value) {
                          //   controller.city = value!;
                          // },
                          // validator: (value) {
                          //   return controller.validateCity(value!);
                          // },
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
                          // controller: controller.genderController,
                          // onSaved: (value) {
                          //   controller.gender = value!;
                          // },
                          // validator: (value) {
                          //   return controller.validateGender(value!);
                          // },
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
                          // controller: controller.adviceController,
                          // onSaved: (value) {
                          //   controller.advice = value!;
                          // },
                          // validator: (value) {
                          //   return controller.validateAdvice(value!);
                          // },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue.shade900),
              onPressed: () {
                Get.to(const MedicalPriscriptionPage());
              },
              child: const Text('Next'),
            ),
          ],
        ),
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
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        builder: (_) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: SizedBox(
              height: 350,
              // child: searchablePopupList(
              //   title: title,
              //   fieldAddress: fieldAddress,
              // ),
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
              // child: searchableCityPopupList(
              //   title: title,
              //   fieldAddress: fieldAddress,
              // ),
            ),
          );
        });
  }
}
