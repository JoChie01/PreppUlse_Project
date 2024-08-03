// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_field, prefer_final_fields, avoid_unnecessary_containers

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prepulse/pages/01.home/home_page.dart';
import 'package:prepulse/pages/02.orderStatus/order_status_page.dart';
import 'package:prepulse/pages/03.analytics/analytics_page.dart';
import 'package:prepulse/pages/04.alerts/alerts_page.dart';
import 'package:prepulse/pages/05.reports/reports_page.dart';
import 'package:prepulse/pages/06.settings/settings_page.dart';
import 'package:prepulse/styles/styles.dart';

class Mydrawer extends StatefulWidget {
  final int currentIndex;

  const Mydrawer({super.key, required this.currentIndex});

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.currentIndex;
  }

  final List<Widget> _pages = [
    const HomePage(),
    const OrderStatusPage(),
    const AnalyticsPage(),
    const AlertsPage(),
    const ReportsPage(),
    const SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Stack(
        children: [
          Column(children: [
            drawerHeader(),
            drawerList(),
          ]),
          Align(
              alignment: Alignment.bottomCenter,
              child: Positioned(bottom: 20, child: logOut()))
        ],
      ),
    );
  }

  Widget drawerHeader() {
    return Container(
        //prepulse logo and title
        width: double.infinity,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 60, 206, 65),
                    borderRadius: BorderRadius.circular(100))),
            Text("PREPULSE", style: header),
          ],
        ));
  }

  Widget drawerList() {
    return Column(
      children: [
        drawerItems("Menu", 0, Icons.menu),
        drawerItems("Order Status", 1, Icons.check_circle),
        drawerItems("Dashboard", 2, Icons.dashboard),
        drawerItems("Alerts", 3, Icons.notification_important_outlined),
        drawerItems("Reports", 4, Icons.percent),
        drawerItems("Settings", 5, Icons.settings),
      ],
    );
  }

  Widget drawerItems(String page, int index, IconData icon) {
    return Container(
      child: GestureDetector(
        onTap: () {
          if (index == widget.currentIndex) {
            Navigator.pop(context);
          } else {
            setState(() {
              _selectedIndex = index;
            });
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => _pages[index]));
          }
        },
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 200,
          height: 40,
          decoration: index == widget.currentIndex
              ? BoxDecoration(
                  color: Color.fromRGBO(117, 243, 75, 1),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0, 2.0),
                        blurRadius: 4,
                        spreadRadius: 0.5,
                      )
                    ])
              : BoxDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 20),
                  child: index == _selectedIndex
                      ? Icon(icon as IconData?, color: Colors.black)
                      : Icon(icon as IconData?, color: Colors.white)),
              Text(page,
                  style: index == _selectedIndex
                      ? selectedNav
                      : TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )),
            ],
          ),
        ),
      ),
    );
  }

  Widget logOut() {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      elevation: 10,
      color: const Color.fromARGB(255, 71, 214, 76),
      child: Container(
        width: 150,
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Log Out",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            FaIcon(
              FontAwesomeIcons.rightFromBracket,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
