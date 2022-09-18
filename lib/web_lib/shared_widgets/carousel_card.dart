import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matt_murdock/utils/custom_app_theme.dart';
import 'package:matt_murdock/web_lib/shared_widgets/image_view.dart';
import 'package:dots_indicator/dots_indicator.dart';

class CarouselCard extends ConsumerStatefulWidget {
  const CarouselCard({
    super.key,
    required this.imageUrlList,
    this.isSvg = false,
    this.isFromNetwork = false,
  });
  final List<String> imageUrlList;
  final bool isSvg;
  final bool isFromNetwork;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CarouselCard();
}

class _CarouselCard extends ConsumerState<CarouselCard> {
  int activeIndex = 0;
  Container buildImage(String imageUrl) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: ImageView(
          height: 250,
          width: 250,
          imageUrl: imageUrl,
          isSvg: widget.isSvg,
          isFromNetwork: widget.isFromNetwork,
        ),
      );
  DotsIndicator buildIndicator(int lenght, Color activeColor) {
    return DotsIndicator(
      dotsCount: lenght,
      position: activeIndex.toDouble(),
      onTap: (position) => setState(() => activeIndex = position.toInt()),
      decorator: DotsDecorator(
          activeColor: activeColor, activeSize: const Size(24, 24)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final int length = widget.imageUrlList.length;
    final theme = CustomAppTheme.of(context);
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: length,
          options: CarouselOptions(
            aspectRatio: 5,
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
          itemBuilder: (context, index, realIndex) {
            return buildImage(widget.imageUrlList[activeIndex]);
          },
        ),
        buildIndicator(length, theme.defaultColorTheme),
      ],
    );
  }
}
