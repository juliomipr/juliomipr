import 'package:flutter/material.dart';
import 'package:matt_murdock/utils/constant.dart';
import 'package:matt_murdock/web_lib/widgets/portafolio/devices/desktop/portafolio.dart';

class PortafolioWidget extends StatelessWidget {
  const PortafolioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > tabletMaxWidth) {
          return const DesktopPortafolioView();
        } else if (constraints.maxWidth > mobileMaxWidth &&
            constraints.maxWidth < tabletMaxWidth) {
          return const DesktopPortafolioView();
        } else {
          return const DesktopPortafolioView();
        }
      },
    );
  }
}
