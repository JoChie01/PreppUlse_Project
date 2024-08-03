// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:prepulse/pages/02.orderStatus/widgets/done_order_card.dart';
import 'package:prepulse/pages/02.orderStatus/widgets/processing_order_card.dart';

class Pdc extends StatefulWidget {
  const Pdc({super.key});

  @override
  State<Pdc> createState() => _PdcState();
}

class _PdcState extends State<Pdc> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.896875,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            processingColumn(),
            doneColumn(),
            cancelledColumn(),
          ],
        ));
  }

  Widget processingColumn() {
    return Column(
      children: [
        topLabel("Processing", Colors.orange),
        Expanded(
          child: Container(
              width: 328,
              child: ListView(
                children: [
                  ProcessingOrderCard(),
                  ProcessingOrderCard(),
                  ProcessingOrderCard(),
                  ProcessingOrderCard(),
                  ProcessingOrderCard(),
                  ProcessingOrderCard(),
                  ProcessingOrderCard(),
                ],
              )),
        )
      ],
    );
  }

  Widget doneColumn() {
    return Container(
      child: Column(
        children: [topLabel("Done", Colors.green), DoneOrderCard()],
      ),
    );
  }

  Widget cancelledColumn() {
    return Column(
      children: [topLabel("Cancelled", Colors.red)],
    );
  }

  Widget topLabel(String label, Color color) {
    return Card(
      elevation: 5,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        alignment: Alignment.center,
        height: 58,
        width: 328,
        child: Text(label, style: TextStyle(color: Colors.white, fontSize: 30)),
      ),
    );
  }
}
