import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/style.dart';
import '../provider/login_notifier.dart';

class ItemImageWidget extends StatelessWidget {
  const ItemImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<LoginNotifier>();
    return Container(
      color: AppStyle.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              provider.imageData[provider.currentIndex]['image'],
              width: 500,
              height: 350,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              provider.imageData[provider.currentIndex]['title'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: AppStyle.semiBold,
                color: AppStyle.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              provider.imageData[provider.currentIndex]['subtitle'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DotsIndicator(
              onTap: (position) {
                provider.pageController.animateToPage(
                  position.toInt(),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              },
              decorator: DotsDecorator(
                color: AppStyle.black,
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                activeColor: AppStyle.btnColor,
              ),
              dotsCount: 3,
              axis: Axis.horizontal,
              position: provider.currentIndex.toDouble(),
            ),
          ],
        ),
      ),
    );
  }
}
