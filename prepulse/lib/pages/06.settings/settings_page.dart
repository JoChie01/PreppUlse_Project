// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prepulse/navigation/mydrawer.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final List settings = [
    ['Account', FontAwesomeIcons.solidCircleUser],
    ['Products', FontAwesomeIcons.solidCircleUser],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Mydrawer(currentIndex: 5),
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red[100],
          child: Row(
            children: [
              //left part. Settings' general buttons
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: ListView(
                  children: [],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue[100],
                ),
              )
            ],
          ),
        ));
  }

  Widget generalSettingsButtons(String title, FaIcon icon) {
    return Container(
      padding: EdgeInsets.only(left: 30),
      color: Colors.grey[300],
      height: 60,
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.solidCircleUser,
            color: Colors.black,
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            "Account",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget generalSettings() {
    return Container();
  }
}
