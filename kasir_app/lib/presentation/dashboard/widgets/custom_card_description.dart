import 'package:flutter/material.dart';

import '../../../common/style.dart';

class CustomCardDescription extends StatelessWidget {
  final List<String> imgAsset, price, description;
  final List<Color> linearColor;
  const CustomCardDescription({
    Key? key,
    required this.price,
    required this.description,
    required this.imgAsset,
    required this.linearColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppStyle.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              bottom: 4,
              top: 14,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: linearColor,
              ),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var i = 0; i < imgAsset.length; i++)
                  Image.asset(
                    imgAsset[i],
                    width: 24,
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var i = 0; i < price.length; i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        price[i],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: AppStyle.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        description[i],
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppStyle.textSecondaryColor,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
