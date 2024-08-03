// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:prepulse/navigation/mydrawer.dart';
import 'package:prepulse/navigation/open_dawer.dart';
import 'package:prepulse/pages/02.orderStatus/widgets/date_selection.dart';
import 'package:prepulse/pages/02.orderStatus/widgets/pdc.dart';


class OrderStatusPage extends StatefulWidget {
  const OrderStatusPage({super.key});

  @override
  State<OrderStatusPage> createState() => _OrderStatusPageState();
}

class _OrderStatusPageState extends State<OrderStatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Mydrawer(currentIndex: 1),
        body: Container(
            color: Colors.grey[300],
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.103125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          OpenDawer(),
                          Text("Order Status"),
                        ],
                      ),
                      DateSelection()
                    ],
                  ),
                ),
                Pdc()
              ],
            )));
  }
}
