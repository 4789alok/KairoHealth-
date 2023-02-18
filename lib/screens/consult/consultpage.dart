import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairohealth/screens/consult/controller/consult_controller.dart';
import 'package:kairohealth/data/constant.dart';
import 'package:kairohealth/widgets/item_category.dart';
import 'package:kairohealth/widgets/item_disease.dart';
import '../SymptomsPage/symptomspage.dart';

class ConsultPage extends GetView<ConsultController> {
  ConsultPage({super.key}) {
    controller.hitApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: GestureDetector(
          // onTap: () {
          //   Get.to(const AdressDetail());
          // },
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.zero,
                ),
                Text(
                  'Deliver to Shivash',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'BANGALORE,562300',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () => print("open shopping"),
          ),
          IconButton(
            icon: const Icon(
              Icons.person,
            ),
            onPressed: () => print("open person"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(height: 50),
            // Row(
            //   children: [
            //     const SizedBox(width: 20),
            //     const Icon(
            //       Icons.location_on,
            //       color: Colors.green,
            //     ),
            //     const SizedBox(width: 15),
            //     const Text(
            //       'BANGALORE',
            //       style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            //     ),
            //     const Icon(
            //       Icons.keyboard_arrow_down_rounded,
            //       color: Color.fromARGB(255, 50, 173, 56),
            //       size: 25,
            //     ),
            //     const SizedBox(width: 90),
            //     IconButton(
            //       icon: const Icon(
            //         Icons.shopping_cart_rounded,
            //       ),
            //       onPressed: () => print("open notification"),
            //     ),
            //     IconButton(
            //       icon: const Icon(
            //         Icons.person,
            //       ),
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => const EditProfilePage(),
            //           ),
            //         );
            //       },
            //     ),
            //   ],
            // ),
            const SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                Get.toNamed('/search');
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: ((context) => const SearchScreen())));
              },
              child: Container(
                height: 56,
                //color: Colors.blue.shade50,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    Text("'Search for Doctors,Specialties or Symtoms'")
                  ],
                ),
                // height: 40,
                // width: 220,
              ),
            ),

            const SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(width: 20),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'VIDEO CONSULT',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                // const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // const SizedBox(width: 20),
                      const Text(
                        'Top Specialties',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      //  const SizedBox(width: 100),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/topSpecialistCategory');
                        },
                        child: Row(
                          children: const [
                            Text(
                              'View all',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.red,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //  const SizedBox(height: 20),
                Obx(() {
                  return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(10.0),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return ItemCategory(
                        image: controller.dataList[index].photo.toString(),
                        title: controller.dataList[index].specialization
                            .toString(),
                        onClick: (() {
                          controller.getDoctorListList(
                              controller.dataList[index].id.toString());
                        }),
                      );
                    },
                    itemCount: controller.dataList.length,
                  );
                }),
              ],
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Ask Kairohealth',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 8.0, bottom: 10),
              child: Text(
                'Feeling unwell? Tell us your systoms for a quick assessment and get appropriate care.',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 20),
            controller.diseaseList.isEmpty
                ? const SizedBox.shrink()
                : SizedBox(
                    height: 110,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      scrollDirection: Axis.horizontal,
                      //  physics: const NeverScrollableScrollPhysics(),
                      // scrollDirection: Axis.horizontal,
                      // shrinkWrap: true,
                      itemCount: controller.diseaseList.length,
                      itemBuilder: (context, index) {
                        return ItemDisease(
                          image: controller.diseaseList[index].photo.toString(),
                          title:
                              controller.diseaseList[index].disease.toString(),
                          onClick: () {
                            controller.getDoctorListBySymptomsList(
                                controller.diseaseList[index].id.toString());
                          },
                        );
                      },
                    ),
                  ),

            GestureDetector(
              onTap: () {
                Get.toNamed('/symptomsPage');
              },
              child: (Container(
                padding: const EdgeInsets.all(6),

                color: Colors.green.shade200,
                // padding: EdgeInsets.all(6),
                margin: const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: const Text(
                  "Any other symptoms?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> listsymptoms = [
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/3954/3954126.png',
    'title': 'Cough',
  },
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/3781/3781954.png',
    'title': 'Fever',
  },
  {
    'image':
        'https://cdn.pixabay.com/photo/2020/10/10/18/27/woman-5643926_1280.png',
    'title': 'Headache',
  },
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/2746/2746593.png',
    'title': 'Sore throat',
  },
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/3954/3954126.png',
    'title': 'Cough',
  },
  {
    'image': 'https://cdn-icons-png.flaticon.com/512/3781/3781954.png',
    'title': 'Fever',
  },
];
