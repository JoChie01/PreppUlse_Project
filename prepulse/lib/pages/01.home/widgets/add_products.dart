import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddProducts extends StatefulWidget {
  const AddProducts({super.key});

  @override
  State<AddProducts> createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return const AlertDialog(
                title: Text('Add Product'),
                contentPadding: EdgeInsets.all(20),
                content: SizedBox(
                  width: 600,
                  height: 500,
                  child: Column(
                    children: [
                      Text("Product Name"),
                      Text("Product Price"),
                      Text("Product Preparation Time"),
                      Text("Product Image"),
                    ],
                  ),
                ),
              );
            });
      },
      child: const Card(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 250),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [FaIcon(FontAwesomeIcons.plus), Text("Add Products")],
            ),
          )),
    );
  }
}
