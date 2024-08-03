// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PlaceOrderButton extends StatefulWidget {
  const PlaceOrderButton({super.key});

  @override
  State<PlaceOrderButton> createState() => _PlaceOrderButtonState();
}

class _PlaceOrderButtonState extends State<PlaceOrderButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60,
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 43, 222, 49),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          "PLACE ORDER",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
