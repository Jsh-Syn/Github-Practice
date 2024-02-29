import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.green[100],
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: kDouble5),
            Image.asset('images/gaming_controller.png'),
            const Text(
              'Title',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Description',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: kDouble5),
          ],
        ),
      ),
    );
  }
}
