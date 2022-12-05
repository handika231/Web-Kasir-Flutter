import 'package:flutter/material.dart';

class TransactionNotifier extends ChangeNotifier {
  List<Widget> views = [
    const Center(
      child: Text('Gadai'),
    ),
    const Center(
      child: Text('Tebus'),
    ),
    const Center(
      child: Text('Perpanjangan'),
    ),
    const Center(
      child: Text('Lelang'),
    ),
    const Center(
      child: Text('Titip'),
    ),
    ListView(
      children: [
        Container(
          color: Colors.orange,
          height: 300,
        ),
        Container(
          color: Colors.green,
          height: 300,
        ),
        Container(
          color: Colors.lightBlue,
          height: 300,
        )
      ],
    )
  ];
}
