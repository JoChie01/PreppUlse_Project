// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProcessingOrderCard extends StatefulWidget {
  const ProcessingOrderCard({super.key});

  @override
  State<ProcessingOrderCard> createState() => _ProcessingOrderCardState();
}

class _ProcessingOrderCardState extends State<ProcessingOrderCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Container(
            padding: EdgeInsets.all(10),
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

                //row for buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    statusButton(Colors.grey, "Cancel"),
                    statusButton(Colors.green, "Done")
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget statusButton(Color color, String bname) {
    return Container(
      alignment: Alignment.center,
      width: 106,
      height: 32,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Text(bname, style: TextStyle(color: Colors.white, fontSize: 16)),
    );
  }
}
