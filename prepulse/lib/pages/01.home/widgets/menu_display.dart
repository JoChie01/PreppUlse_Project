// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:prepulse/pages/02.orderStatus/order_status_page.dart';
import 'package:prepulse/src/constants/colors.dart';


class MenuDisplay extends StatefulWidget {
  const MenuDisplay({super.key});

  @override
  State<MenuDisplay> createState() => _MenuDisplayState();
}

class _MenuDisplayState extends State<MenuDisplay> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 0.70356741,
              children: [
                productCard(),
                productCard(),
                productCard(),
                productCard(),
                productCard(),
                productCard(),
                productCard(),
                productCard(),
                productCard(),
                productCard(),
                productCard(),
                productCard(),
                productCard(),
                productCard(),
                productCard(),
                productCard(),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => OrderStatusPage()));
              },
              child: Container(
                  width: 206,
                  height: 52,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 71, 219, 76),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Order Status",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Icon(Icons.arrow_upward_rounded)
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget productCard() {
    double padding = MediaQuery.of(context).size.height * 0.011458333;
    return Card(
      color: pWhiteColor,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(20),
      child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.153125,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    height: MediaQuery.of(context).size.height * 0.04375,
                    child: AutoSizeText(
                      minFontSize: 10,
                      maxLines: 2,
                      "Product Name OF the item",
                      style: TextStyle(fontSize: 30, color: pSecondaryColor),
                    )),
                Container(
                  alignment: Alignment.centerRight,
                  height: MediaQuery.of(context).size.height * 0.025,
                  child: AutoSizeText(
                    minFontSize: 16,
                    "Price",
                    style: TextStyle(fontSize: 30, color: pSecondaryColor),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.039583333,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: AutoSizeText("Add to dish",
                      maxLines: 1,
                      minFontSize: 10,
                      style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20)),
                ),
              ])),
    );
  }
}
