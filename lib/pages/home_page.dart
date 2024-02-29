import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              title: "Game",
              imagePath: 'images/gaming_controller.png',
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    title: "Competitive",
                    imagePath: 'images/man.png',
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    title: "Fun",
                    imagePath: 'images/woman.png',
                  ),
                ),
              ],
            ),
            CardWidget(
              title: "Levels",
              imagePath: 'images/levels.png',
            ),
          ],
        ),
      ),
    );
  }
}
