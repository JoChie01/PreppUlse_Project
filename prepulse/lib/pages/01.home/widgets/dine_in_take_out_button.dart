// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DineInTakeOutButton extends StatefulWidget {
  const DineInTakeOutButton({super.key});

  @override
  State<DineInTakeOutButton> createState() => _DineInTakeOutButtonState();
}

class _DineInTakeOutButtonState extends State<DineInTakeOutButton> {
  int selectedButton = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.073958333,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedButton = 0;
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.14930,
            height: MediaQuery.of(context).size.height * 0.04375,
            decoration: BoxDecoration(
              color: selectedButton == 0 ? Colors.black : Colors.grey[400],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
            ),
            child: Center(
              child: Text('Dine In',
                  style: TextStyle(
                    fontSize: 20,
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
            height: MediaQuery.of(context).size.height * 0.04375,
            decoration: BoxDecoration(
              color: selectedButton == 0 ? Colors.grey[400] : Colors.black,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Center(
              child: Text('Take out',
                  style: TextStyle(
                    fontSize: 20,
                    color: selectedButton == 0 ? Colors.black : Colors.white,
                  )),
            ),
          ),
        ),
      ]),
    );
  }
}
