import 'package:flutter/material.dart';
import 'package:kairohealth/widgets/custom_text.dart';

class ItemDisease extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback? onClick;
  const ItemDisease(
      {super.key, required this.image, required this.title, this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(4),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(color: Colors.blue.shade200),
        ),
        child: Column(
          children: [
            Image(
              image: NetworkImage(
                image,
              ),
              height: 60,
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: CustomText(text: title),
            ),
          ],
        ),
      ),
    );
  }
}
