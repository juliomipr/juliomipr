import 'package:flutter/material.dart';
import 'package:matt_murdock/utils/constant.dart';
import 'package:matt_murdock/web_lib/widgets/hero_section/devices/desktop/hero_section.dart';
import 'package:matt_murdock/web_lib/widgets/hero_section/devices/mobile/hero_section.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= tabletMaxWidth) {
          return const DesktopHeroSection();
        } else if (constraints.maxWidth > mobileMaxWidth &&
            constraints.maxWidth < tabletMaxWidth) {
          return const MobileHeroSection();
        } else {
          return const MobileHeroSection();
        }
      },
    );
  }
}
