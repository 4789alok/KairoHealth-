import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

Widget ProfileTile({
  required String title,
  IconData? frontIcon,
  IconData? endIcon,
  required VoidCallback onClick,
}) {
  return GestureDetector(
    onTap: onClick,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      // margin: const EdgeInsets.all(10),
      //  height: 60,
      // width: double.infinity,
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.circular(8),
      // ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(frontIcon, size: 32, color: Colors.grey.shade800),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800),
                  ),
                ),
                // SizedBox(width: 40),
                Icon(
                  endIcon,
                  size: 18,
                  color: Colors.grey.shade800,
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            height: 20,
            color: Colors.grey.shade400,
          )
        ],
      ),
    ),
  );
}
