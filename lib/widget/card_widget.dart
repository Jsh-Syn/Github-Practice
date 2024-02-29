import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: const Color.fromARGB(255, 222, 252, 223),
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: kDouble5),
            Image.asset(imagePath),
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'This is a description',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: kDouble5),
          ],
        ),
      ),
    );
  }
}
