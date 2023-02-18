import 'package:flutter/material.dart';
import 'package:kairohealth/widgets/custom_text.dart';

Widget PatientTile({
  required String name,
  required String email,
  String? gender,
  required String photo,
  VoidCallback? onClick,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        GestureDetector(
          onTap: onClick,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                height: 70,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(photo), fit: BoxFit.cover),
                ),
              ),
              // const SizedBox(width: 30.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade700),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    email,
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ),
                  gender == null
                      ? const SizedBox.shrink()
                      : Row(
                          children: [
                            const CustomText(
                              text: 'Gender',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            CustomText(
                              text: gender,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ],
                        )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
