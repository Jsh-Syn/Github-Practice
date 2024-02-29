import 'package:flutter/material.dart';
import 'package:flutter_application_1/class/item_class.dart';
import 'package:flutter_application_1/core/constant.dart';
import 'package:flutter_application_1/pages/description_page.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box});

  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const DescriptionPage();
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: const Color.fromARGB(255, 222, 252, 223),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: kDouble5),
              Image.asset(box.imagePath),
              Text(
                box.title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'This is the ${box.title} description',
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(height: kDouble5),
            ],
          ),
        ),
      ),
    );
  }
}
