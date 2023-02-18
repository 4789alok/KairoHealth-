import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:kairohealth/screens/consult/doctorsdetails/doctorsdetails.dart';
import 'package:kairohealth/screens/consult/doctorsdetails/select_time_slot/check_out/checkout.dart';

class SelectTimeSlotPage extends StatefulWidget {
  const SelectTimeSlotPage({super.key, this.title});
  final String? title;

  @override
  State<SelectTimeSlotPage> createState() => _SelectTimeSlotPageState();
}

class _SelectTimeSlotPageState extends State<SelectTimeSlotPage> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('SELECT TIME SLOT'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 0.0),
                              child: Column(
                                children: [
                                  const Image(
                                    image: NetworkImage(
                                        'https://res.cloudinary.com/doczo/image/upload/v1628964569/doctors/dr-v-s-v-kumar-chennai.png'),
                                    height: 150,
                                    width: 150,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.grey.shade200,
                                        elevation: 0.0),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const DoctorDetailsPage(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'View Profile',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amber.shade900),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 1.0, bottom: 25),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 0),
                                    child: const Text(
                                      'Dr. Avinash Gupta',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      'Obestetrics & Gynaecology | 16 YRS Exp.',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.blue.shade700),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 600,
                    width: double.infinity,
                    child: DefaultTabController(
                      length: 2,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: TabBar(
                              labelColor: Colors.blueGrey.shade800,
                              labelStyle: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                              unselectedLabelColor: Colors.blueGrey.shade300,
                              tabs: const [
                                Tab(text: "Video Consult"),
                                Tab(text: "Hospital Visit"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          const Padding(
                                            padding: EdgeInsets.all(5.0),
                                          ),
                                          DatePicker(
                                            DateTime.now(),
                                            width: 60,
                                            height: 80,
                                            controller: _controller,
                                            initialSelectedDate: DateTime.now(),
                                            selectionColor:
                                                Colors.tealAccent.shade700,
                                            selectedTextColor: Colors.white,
                                            inactiveDates: [
                                              DateTime.now().add(
                                                const Duration(days: 3),
                                              ),
                                              DateTime.now().add(
                                                const Duration(days: 4),
                                              ),
                                              DateTime.now().add(
                                                const Duration(days: 7),
                                              ),
                                            ],
                                            onDateChange: (date) {
                                              // New date selected
                                              setState(
                                                () {
                                                  _selectedValue = date;
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Column(
                                      children: const [
                                        Text(
                                          'Today, 10 Dec',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),

                                        // Row(
                                        //   children: const [
                                        //     SizedBox(width: 10),
                                        //     Text(
                                        //       '12 PM - 6 PM',
                                        //       style: TextStyle(
                                        //           fontSize: 18,
                                        //           fontWeight: FontWeight.bold),
                                        //     ),
                                        //     SizedBox(width: 30),
                                        //     Text(
                                        //       '5 Slots Available',
                                        //       style: TextStyle(
                                        //           fontSize: 17,
                                        //           fontWeight: FontWeight.bold,
                                        //           color: Colors.blueGrey),
                                        //     ),
                                        //   ],
                                        // ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 250, top: 30),
                                      child: const Text(
                                        'Morning',
                                        style: TextStyle(
                                            color: Color(0xff363636),
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      margin: const EdgeInsets.only(right: 20),
                                      child: GridView.count(
                                        shrinkWrap: true,
                                        crossAxisCount: 3,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        childAspectRatio: 2.6,
                                        children: [
                                          doctorTimings("8:30 AM", true),
                                          doctorTimings("9:00 AM", false),
                                          doctorTimings("9:30 AM", false),
                                          doctorTimings("10:00 AM", false),
                                          doctorTimings("10:30 AM", false),
                                          doctorTimings("11:00 AM", false),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 250, top: 30),
                                      child: const Text(
                                        'Evening',
                                        style: TextStyle(
                                            color: Color(0xff363636),
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      margin: const EdgeInsets.only(right: 20),
                                      child: GridView.count(
                                        shrinkWrap: true,
                                        crossAxisCount: 3,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        childAspectRatio: 2.6,
                                        children: [
                                          doctorTimings("8:30 AM", true),
                                          doctorTimings("9:00 AM", false),
                                          doctorTimings("9:30 AM", false),
                                          doctorTimings("10:00 AM", false),
                                          doctorTimings("10:30 AM", false),
                                          doctorTimings("11:00 AM", false),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            const Padding(
                                              padding: EdgeInsets.all(5.0),
                                            ),
                                            DatePicker(
                                              DateTime.now(),
                                              width: 60,
                                              height: 80,
                                              controller: _controller,
                                              initialSelectedDate:
                                                  DateTime.now(),
                                              selectionColor:
                                                  Colors.tealAccent.shade700,
                                              selectedTextColor: Colors.white,
                                              inactiveDates: [
                                                DateTime.now().add(
                                                  const Duration(days: 3),
                                                ),
                                                DateTime.now().add(
                                                  const Duration(days: 4),
                                                ),
                                                DateTime.now().add(
                                                  const Duration(days: 7),
                                                ),
                                              ],
                                              onDateChange: (date) {
                                                // New date selected
                                                setState(() {
                                                  _selectedValue = date;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.tealAccent.shade700),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.call,
                      color: Colors.white,
                      size: 50,
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Doctor will call you between',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '03:00 PM - 04:00 PM',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  width: 370,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.amber),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CheckOutPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'PROCEED',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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

  doctorTimings(String time, bool isSelected) {
    return isSelected
        ? Container(
            margin: const EdgeInsets.only(left: 20, top: 10),
            decoration: BoxDecoration(
                color: Colors.tealAccent.shade700,
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 2),
                  child: const Icon(Icons.access_time,
                      color: Colors.white, size: 18),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 2),
                  child: Text(
                    time,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          )
        : Container(
            decoration: BoxDecoration(
                color: const Color(0xffEEEEEE),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 2),
                  child: const Icon(Icons.access_time,
                      color: Colors.black, size: 18),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 2),
                  child: Text(
                    time,
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ],
            ),
          );
  }
}
