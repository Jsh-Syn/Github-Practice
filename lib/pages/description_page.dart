import 'package:flutter/material.dart';

import 'package:flutter_application_1/class/item_class.dart';
import 'package:flutter_application_1/core/constant.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key, required this.box});

  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // use this if no return after clicking card -- automaticallyImplyLeading: false,
        // use this i want to center the title -- centerTitle: true,
        title: Text(box.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(box.imagePath),
              FittedBox(
                child: Text(
                  box.title,
                  style: const TextStyle(
                    fontSize: 200,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                baconDescription,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: kDouble10,
              ),
              const Text(
                baconDescription,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
