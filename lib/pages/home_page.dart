import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //new
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: Text(
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
                child: Image.asset('images/gaming_controller.png'),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.green[100],
                      child: Image.asset('images/man.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.green[100],
                      child: Image.asset('images/woman.png'),
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
                child: Image.asset('images/levels.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
