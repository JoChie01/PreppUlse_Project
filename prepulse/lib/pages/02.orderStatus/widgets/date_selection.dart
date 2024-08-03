// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class DateSelection extends StatefulWidget {
  const DateSelection({super.key});

  @override
  State<DateSelection> createState() => _DateSelectionState();
}

class _DateSelectionState extends State<DateSelection> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Text(
            "  ${selectedDate.month} - ${selectedDate.day} - ${selectedDate.year} "),
        GestureDetector(
            onTap: () async {
              final DateTime? dateTime = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2024),
                  lastDate: DateTime(3000));
              if (dateTime != null) {
                setState(() {
                  selectedDate = dateTime;
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 30, right: 30),
              width: 100,
              height: 50,
              child: Text(
                "Select Date",
                style: TextStyle(color: Colors.white),
              ),
            ))
      ],
    ));
  }
}
