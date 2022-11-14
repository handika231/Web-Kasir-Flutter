import 'package:flutter/material.dart';

import '../../../common/style.dart';

class TitleCashOpnameWidget extends StatelessWidget {
  final String title;
  final List<Color> linearColor;
  const TitleCashOpnameWidget(
      {Key? key, required this.title, required this.linearColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: linearColor),
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 34,
          top: 8,
          bottom: 8,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: AppStyle.bold,
            color: AppStyle.white,
          ),
        ),
      ),
    );
  }
}
