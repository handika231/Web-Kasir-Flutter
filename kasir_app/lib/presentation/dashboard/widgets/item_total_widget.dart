import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../common/style.dart';

class ItemTotalWidget extends StatelessWidget {
  final String title;
  final String value;
  final String price;
  final Color indicatorColor;
  final String indicatorText;
  const ItemTotalWidget({
    Key? key,
    required this.title,
    required this.value,
    required this.price,
    required this.indicatorText,
    required this.indicatorColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Icon(
              Icons.check_circle,
              color: indicatorColor,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: AppStyle.regular,
                  color: AppStyle.textSecondaryColor,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: AppStyle.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Rp $price',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: AppStyle.semiBold,
                  color: AppStyle.textSecondaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          Flexible(
            child: CircularPercentIndicator(
              radius: 20,
              lineWidth: 4,
              percent: (double.tryParse(indicatorText)! / 100),
              curve: Curves.easeInOut,
              center: Text('$indicatorText%'),
              progressColor: indicatorColor,
            ),
          ),
        ],
      ),
    );
  }
}
