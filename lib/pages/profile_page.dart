import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant.dart';
import 'package:flutter_application_1/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/profilecat.png'),
            radius: 100,
          ),
          SizedBox(
            height: kDouble20,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('John Dela Cruz'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('johndelacruz@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('jdelacruz.com'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            isDarkModeNotifier.value = !isDarkModeNotifier.value;
          },
          child: ValueListenableBuilder(
            valueListenable: isDarkModeNotifier,
            builder: (context, isDark, child) {
              if (!isDark) {
                return Icon(Icons.dark_mode);
              } else {
                return Icon(Icons.light_mode);
              }
            },
          )),
    );
  }
}
