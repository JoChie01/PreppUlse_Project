// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DoneOrderCard extends StatefulWidget {
  const DoneOrderCard({super.key});

  @override
  State<DoneOrderCard> createState() => _DoneOrderCardState();
}

class _DoneOrderCardState extends State<DoneOrderCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Container(
            padding: EdgeInsets.all(10),
            width: 328,
            child: Column(
              children: [
                Row(
                  children: [
                    //order number
                    Text("Order #" "004",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    // for timer
                  ],
                ),
                // row for product name and numbe of items
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Product Name"),
                    Text(
                      "x" "2",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Product Name"),
                    Text(
                      "x" "2",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                // for comment/ customization
                
                //row for buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [],
                )
              ],
            ),
          ),
        ));
  }
}
