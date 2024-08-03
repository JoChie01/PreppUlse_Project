// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:prepulse/navigation/mydrawer.dart';
import 'package:prepulse/pages/03.analytics/widgets/total_sales.dart';


class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Mydrawer(currentIndex: 2),
        appBar: AppBar(
          title: Text("Analytics"),
        ),
        body: Column(
          children: [
            Row(
              children: [TotalSales()],
            )
          ],
        ));
  }
}
