import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: generateContainer,
      ),
    );
  }
}

List<Widget> get generateContainer {
  return List.generate(
    10,
    (index) => Container(
      height: 100,
      width: 100,
      color: Colors.red,
    ),
  );
}
