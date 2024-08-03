// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderOverview extends StatefulWidget {
  const OrderOverview({super.key});

  @override
  State<OrderOverview> createState() => _OrderOverviewState();
}

class _OrderOverviewState extends State<OrderOverview> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height * 0.4504166667,
      child: ListView(
        children: [],
      ),
    );
  }

  Widget card(String productName, int productPrice, int productQuantity,
      int productTotal) {
    return Card(
      color: const Color.fromARGB(255, 244, 244, 244),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 105,
          width: 500,
          child: Row(
            children: [
              // for product picture and left side of the container
              Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 100,
                  width: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  )),

              // for right side of the container
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // for product name
                  Container(
                    width: 230,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Product name",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),

                  // for price of the product
                  Container(
                    width: 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Price"), Text("10 PHP")],
                    ),
                  ),

                  // for quantity / add or subtract button
                  Container(
                    width: 150,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (quantity > 0) {
                                quantity = quantity - 1;
                              } else {
                                quantity = 0;
                              }
                            });
                          },
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100)),
                              width: 20,
                              height: 20,
                              child: FaIcon(
                                FontAwesomeIcons.minus,
                                size: 15,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text("$quantity"),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              quantity = quantity + 1;
                            });
                          },
                          child: Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              child: FaIcon(FontAwesomeIcons.circlePlus)),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
