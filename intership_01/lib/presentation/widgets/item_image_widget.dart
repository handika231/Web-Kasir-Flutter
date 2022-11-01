import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:intership_01/common/extension.dart';

import '../../common/style.dart';

class ItemImageWidget extends StatelessWidget {
  final int currentIndex;
  const ItemImageWidget({
    Key? key,
    required this.currentIndex,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'bg-login'.path,
              width: 500,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Mendata secara detail transaksi yang terjadi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: semiBold,
                color: blackColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Mendata secara detail transaksi yang terjadi pada tiap-tiap cabang\nretail yang sudah dikonfigurasikan sebelumnya.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DotsIndicator(
              onTap: (position) {
                _pageController.animateToPage(
                  position.toInt(),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              },
              decorator: DotsDecorator(
                color: blackColor,
                activeColor: orangeColor,
              ),
              dotsCount: 3,
              axis: Axis.horizontal,
              position: currentIndex.toDouble(),
            ),
          ],
        ),
      ),
    );
  }
}
