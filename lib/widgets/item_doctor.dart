import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kairohealth/models/doctorDetails.dart';

class ItemDoctor extends StatelessWidget {
  final DoctorDetails data;
  const ItemDoctor({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade900,
                  width: 1,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    image: NetworkImage(
                      data.photo.toString(),
                    ),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Stack(
                alignment: AlignmentDirectional.bottomStart,
                // fit: StackFit.loose,
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    // margin: const EdgeInsets.only(left: 6, right: 5),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    // width: MediaQuery.of(context).size.width,
                    //width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data.name.toString(),
                          maxLines: 2,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        // Text(
                        //   "MBBS",
                        //   style: TextStyle(
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.bold,
                        //       color: Colors.white),
                        // ),
                        // SizedBox(
                        //   height: 2,
                        // ),
                        Text(
                          '(${data.post.toString()})',
                          style: const TextStyle(
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 10,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        decoration: BoxDecoration(
                          color: Colors.amber.shade500,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(4),
                            topLeft: Radius.circular(4),
                          ),
                        ),
                        child: Text(
                          "${data.experience} year exp",
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
