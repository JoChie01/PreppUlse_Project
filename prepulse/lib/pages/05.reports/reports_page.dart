// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prepulse/navigation/mydrawer.dart';


class ReportsPage extends StatefulWidget {
  const ReportsPage({super.key});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Mydrawer(currentIndex: 4),
      appBar: AppBar(),
    );
  }
}
