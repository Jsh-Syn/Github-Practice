import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //new
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: const Text(
          'A-Game',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Description',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: kDouble5),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.green[100],
                      child: Column(
                        children: [
                          const SizedBox(height: kDouble5),
                          Image.asset('images/man.png'),
                          const Text(
                            'Title',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Description',
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: kDouble5),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.green[100],
                      child: Column(
                        children: [
                          const SizedBox(height: kDouble5),
                          Image.asset('images/woman.png'),
                          const Text(
                            'Title',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Description',
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: kDouble5),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                color: Colors.green[100],
                child: Column(
                  children: [
                    const SizedBox(height: kDouble5),
                    Image.asset('images/levels.png'),
                    const Text(
                      'Title',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Description',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: kDouble5),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
