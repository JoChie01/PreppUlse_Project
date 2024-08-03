// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TotalCard extends StatefulWidget {
  const TotalCard({super.key});

  @override
  State<TotalCard> createState() => _TotalCardState();
}

class _TotalCardState extends State<TotalCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.grey[300],
      margin: EdgeInsets.all(20),
      child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("SubTotal"), Text("1000.00 PHP")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Tax 5%"), Text("50.00 PHP")],
              ),
              AutoSizeText(
                "---------------------------------------------------------------",
                maxLines: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Total"), Text("1050.00 PHP")],
              ),
            ],
          )),
    );
  }
}
