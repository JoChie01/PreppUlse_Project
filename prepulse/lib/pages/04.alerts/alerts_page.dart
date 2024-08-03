// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prepulse/navigation/mydrawer.dart';


class AlertsPage extends StatefulWidget {
  const AlertsPage({super.key});

  @override
  State<AlertsPage> createState() => _AlertsPageState();
}

class _AlertsPageState extends State<AlertsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Mydrawer(currentIndex: 3),
      appBar: AppBar(),
    );
  }
}
