// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OpenDawer extends StatefulWidget {
  const OpenDawer({super.key});

  @override
  State<OpenDawer> createState() => _OpenDawerState();
}

class _OpenDawerState extends State<OpenDawer> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    );
  }
}
