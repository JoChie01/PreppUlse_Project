// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CashCard extends StatefulWidget {
  const CashCard({super.key});

  @override
  State<CashCard> createState() => _CashCardState();
}

class _CashCardState extends State<CashCard> {
  int selectedButton = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.08020,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedButton = 0;
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.14930,
            height: MediaQuery.of(context).size.height * 0.05910,
            decoration: BoxDecoration(
              color: selectedButton == 0 ? Colors.black : Colors.grey[400],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
            ),
            child: Center(
              child: Text('Cash',
                  style: TextStyle(
                    color: selectedButton == 0 ? Colors.white : Colors.black,
                  )),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedButton = 1;
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.14930,
            height: MediaQuery.of(context).size.height * 0.05910,
            decoration: BoxDecoration(
              color: selectedButton == 0 ? Colors.grey[400] : Colors.black,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Center(
              child: Text('Card',
                  style: TextStyle(
                    color: selectedButton == 0 ? Colors.black : Colors.white,
                  )),
            ),
          ),
        ),
      ]),
    );
  }
}
