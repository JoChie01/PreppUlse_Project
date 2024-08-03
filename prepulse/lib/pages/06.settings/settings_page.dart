// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:prepulse/navigation/mydrawer.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Mydrawer(currentIndex: 5),
        appBar: AppBar(
          title: const Text('Account Settings'),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border:
                      Border(top: BorderSide(width: 1, color: Colors.grey))),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [generalSettingsButton()],
                  )
                ],
              ),
            ),
          ],
        ));
  }

  Widget generalSettingsButton() {
    return Container(width: 100, height: 30, color: Colors.red);
  }

  Widget generalSettings() {
    return Container();
  }
}
