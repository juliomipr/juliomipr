import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matt_murdock/utils/assets_utils.dart';
import 'package:matt_murdock/utils/custom_text_style.dart';
import 'package:matt_murdock/web_lib/shared_widgets/carousel_card.dart';

class DesktopExpertiseWidget extends ConsumerStatefulWidget {
  const DesktopExpertiseWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DesktopExpertiseWidget();
}

class _DesktopExpertiseWidget extends ConsumerState<DesktopExpertiseWidget> {
  @override
  Widget build(BuildContext context) {
    final textStyle = CustomTextStyle.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 48),
          child: Text(
            'Expertise',
            style: textStyle.headlineStyle,
          ),
        ),
        const CarouselCard(
          imageUrlList: AssetsUtils.expertiseCarousel,
          isSvg: true,
        ),
      ],
    );
  }
}
