import 'package:flutter/material.dart';
import 'package:kairohealth/widgets/custom_text.dart';

class ItemCategory extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onClick;
  const ItemCategory(
      {super.key,
      required this.image,
      required this.title,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onClick,
              child: Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue.shade200),
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
            ),
          ),
        ],
      ),
    );
  }
}
