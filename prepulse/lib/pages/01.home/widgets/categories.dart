// ignore_for_file: prefer_final_fields, prefer_const_constructors, sized_box_for_whitespace

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _selectedCategory = 0;
  int allItems = 1145;



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
      height: MediaQuery.of(context).size.height * 0.1064583333,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          cetegoryBox("All items", allItems.toString(), 0),
          ...List.generate(8, (index) {
            return cetegoryBox("Category ${index + 1}", "10", index + 1);
          })
        ],
      ),
    );
  }

  Widget cetegoryBox(String title, String items, int index) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedCategory = index;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: _selectedCategory == index ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 10,
                  spreadRadius: 0.5,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-2.0, -2.0),
                  blurRadius: 10,
                  spreadRadius: 0.5,
                )
              ]),
          width: MediaQuery.of(context).size.width * 0.09323611111,
          height: MediaQuery.of(context).size.height * 0.07235416667,
          margin: EdgeInsets.fromLTRB(
              0, 0, MediaQuery.of(context).size.width * 0.02, 0),
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                  minFontSize: 5,
                  maxFontSize: 40,
                  maxLines: 1,
                  title,
                  style: _selectedCategory == index
                      ? TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)
                      : TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
              AutoSizeText(
                  maxLines: 1,
                  minFontSize: 1,
                  maxFontSize: 25,
                  "$items items",
                  style: _selectedCategory == index
                      ? TextStyle(
                          color: Colors.white,
                        )
                      : TextStyle(color: Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}
