// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TotalSales extends StatefulWidget {
  const TotalSales({super.key});

  @override
  State<TotalSales> createState() => _TotalSalesState();
}

class _TotalSalesState extends State<TotalSales> {
  int totalSales = 2400;
  int totalOrder = 20;
  int productsSold = 20;
  int customers = 34;
  int percentage = 5;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Today's Sales"),
            Text("Sales Summary"),
            SizedBox(
              width: 800,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  cards(Icons.bar_chart, totalSales, "Total Sales", percentage),
                  cards(
                      Icons.note_sharp, totalOrder, "Total Orders", percentage),
                  cards(Icons.note, productsSold, "Products Sold", percentage),
                  cards(Icons.person, customers, "Total Customers", percentage),
                ],
              ),
            )
          ]),
        ));
  }

  Widget cards(IconData icon, int total, String title, int percent) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 30),
        width: 175,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.lightBlue[100],
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon),
            Text("$total" " PHP",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(title, style: TextStyle(fontSize: 16)),
            Text("$percent" "% from yesterday", style: TextStyle(fontSize: 12))
          ],
        ));
  }
}
