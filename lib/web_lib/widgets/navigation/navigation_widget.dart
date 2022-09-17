import 'package:flutter/material.dart';
import 'package:matt_murdock/utils/constant.dart';
import 'package:matt_murdock/web_lib/widgets/navigation/devices/desktop/naviagtation_widget.dart';
import 'package:matt_murdock/web_lib/widgets/navigation/devices/mobile/navigation_widget.dart';

class MainNavigationBar extends StatelessWidget {
  const MainNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > tabletMaxWidth) {
          return const DesktopMainMenuNavigationBar();
        } else if (constraints.maxWidth > mobileMaxWidth &&
            constraints.maxWidth < tabletMaxWidth) {
          return const MobileMainMenuNavigationBar();
        } else {
          return const MobileMainMenuNavigationBar();
        }
      },
    );
  }
}
