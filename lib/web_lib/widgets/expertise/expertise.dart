import 'package:flutter/material.dart';
import 'package:matt_murdock/utils/constant.dart';
import 'package:matt_murdock/web_lib/widgets/expertise/devices/desktop/expertise.dart';

class ExpertiseWidget extends StatelessWidget {
  const ExpertiseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= tabletMaxWidth) {
          return const DesktopExpertiseWidget();
        } else if (constraints.maxWidth > mobileMaxWidth &&
            constraints.maxWidth < tabletMaxWidth) {
          return const DesktopExpertiseWidget();
        } else {
          return const DesktopExpertiseWidget();
        }
      },
    );
  }
}
