import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/login_notifier.dart';
import 'item_image_widget.dart';

class CarouselImageWidget extends StatelessWidget {
  const CarouselImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LoginNotifier>(context);
    return Expanded(
      flex: 4,
      child: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
        child: PageView(
          scrollDirection: Axis.horizontal,
          controller: provider.pageController,
          onPageChanged: (value) {
            provider.changeIndex(value);
          },
          children: const [
            ItemImageWidget(),
            ItemImageWidget(),
            ItemImageWidget(),
          ],
        ),
      ),
    );
  }
}
