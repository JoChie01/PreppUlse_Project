// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:prepulse/navigation/mydrawer.dart';
import 'package:prepulse/pages/01.home/widgets/appbar.dart';
import 'package:prepulse/pages/01.home/widgets/categories.dart';
import 'package:prepulse/pages/01.home/widgets/menu_display.dart';
import 'package:prepulse/pages/01.home/widgets/receipt_section.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Mydrawer(
          currentIndex: 0,
        ),
        body: homeRow());
  }

  Widget homeRow() {
    return Row(
      children: [
        //left container
        Container(
            color: Colors.grey[200],
            width: MediaQuery.of(context).size.width * 0.6743055556,
            child: Column(
              children: [Appbar(), Categories(), MenuDisplay()],
            )),
        //right container
        Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width * 0.3256944444,
            child: ReceiptSection())
      ],
    );
  }
}
