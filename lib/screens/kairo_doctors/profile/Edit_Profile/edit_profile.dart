import 'package:flutter/material.dart';

class EditProfileDr extends StatefulWidget {
  const EditProfileDr({super.key});

  @override
  State<EditProfileDr> createState() => _EditProfileDrState();
}

class _EditProfileDrState extends State<EditProfileDr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent.shade700,
        title: const Text("Edit Profile"),
        // backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0xff69BF7F),
                        radius: 60.0,
                        backgroundImage: NetworkImage(
                            'https://nisargahospital.in/wp-content/uploads/2021/08/Dr-Jithesh-P.jpg'),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 4, color: Colors.blue),
                              color: Colors.green),
                          child: const Center(
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Full Name",
                        labelStyle: const TextStyle(
                            color: Color(0xFF033d73),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide: BorderSide(
                              color: Color(0xFF033d73),
                            ))),
                  ),
                ),
                // const SizedBox(
                //   height: 04,
                // ),
                SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 12),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                labelText: "Contact No",
                                labelStyle: const TextStyle(
                                    color: Color(0xFF033d73),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    borderSide: BorderSide(
                                      color: Color(0xFF033d73),
                                    ))),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 12),
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: "Gender",
                                labelStyle: const TextStyle(
                                    color: Color(0xFF033d73),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    borderSide: BorderSide(
                                      color: Color(0xFF033d73),
                                    ))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Graduation",
                        labelStyle: const TextStyle(
                            color: Color(0xFF033d73),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide: BorderSide(
                              color: Color(0xFF033d73),
                            ))),
                  ),
                ),

                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Post Graduation",
                        labelStyle: const TextStyle(
                            color: Color(0xFF033d73),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide: BorderSide(
                              color: Color(0xFF033d73),
                            ))),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Other",
                        labelStyle: const TextStyle(
                            color: Color(0xFF033d73),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide: BorderSide(
                              color: Color(0xFF033d73),
                            ))),
                  ),
                ),

                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Experience",
                        labelStyle: const TextStyle(
                            color: Color(0xFF033d73),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide: BorderSide(
                              color: Color(0xFF033d73),
                            ))),
                  ),
                ),

                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Specialised",
                        labelStyle: const TextStyle(
                            color: Color(0xFF033d73),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide: BorderSide(
                              color: Color(0xFF033d73),
                            ))),
                  ),
                ),

                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Languages",
                        labelStyle: const TextStyle(
                            color: Color(0xFF033d73),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            borderSide: BorderSide(
                              color: Color(0xFF033d73),
                            ))),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      fontFamily: "Times New Roman",
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
