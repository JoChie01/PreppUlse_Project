// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prepulse/pages/01.home/widgets/cash_card.dart';
import 'package:prepulse/pages/01.home/widgets/dine_in_take_out_button.dart';
import 'package:prepulse/pages/01.home/widgets/order_overview.dart';
import 'package:prepulse/pages/01.home/widgets/place_order_button.dart';
import 'package:prepulse/pages/01.home/widgets/total_card.dart';

class ReceiptSection extends StatefulWidget {
  const ReceiptSection({super.key});

  @override
  State<ReceiptSection> createState() => _ReceiptSectionState();
}

class _ReceiptSectionState extends State<ReceiptSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width * 0.3256944444,
            height: MediaQuery.of(context).size.height * 0.07604166667,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Customer's Receipt",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Order #0001",
                  style: TextStyle(
                      color: Color.fromARGB(255, 43, 222, 49),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          DineInTakeOutButton(),
          OrderOverview(),
          TotalCard(),
          CashCard(),
          PlaceOrderButton(),
        ],
      ),
    );
  }
}
