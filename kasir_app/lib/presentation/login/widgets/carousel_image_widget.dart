import 'package:flutter/material.dart';

import 'item_image_widget.dart';

class CarouselImageWidget extends StatefulWidget {
  final PageController pageController;
  int currentPage;
  CarouselImageWidget(
      {super.key, required this.pageController, required this.currentPage});

  @override
  State<CarouselImageWidget> createState() => _CarouselImageWidgetState();
}

class _CarouselImageWidgetState extends State<CarouselImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: widget.pageController,
        onPageChanged: (value) {
          setState(() {
            widget.currentPage = value;
          });
        },
        children: [
          ItemImageWidget(
            pageController: widget.pageController,
            currentIndex: widget.currentPage,
          ),
          ItemImageWidget(
            pageController: widget.pageController,
            currentIndex: widget.currentPage,
          ),
          ItemImageWidget(
            pageController: widget.pageController,
            currentIndex: widget.currentPage,
          ),
        ],
      ),
    );
  }
}
