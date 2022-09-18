import 'package:flutter/material.dart';
import 'package:matt_murdock/utils/colors_utils.dart';
import 'package:matt_murdock/utils/constant.dart';
import 'package:matt_murdock/utils/custom_app_theme.dart';
import 'package:matt_murdock/web_lib/widgets/hero_section/devices/desktop/hero_section.dart';
import 'package:matt_murdock/web_lib/widgets/hero_section/hero_section.dart';
import 'package:matt_murdock/web_lib/widgets/navigation/devices/mobile/navigation_widget.dart';
import 'package:matt_murdock/web_lib/widgets/navigation/navigation_widget.dart';
import 'package:matt_murdock/web_lib/shared_widgets/page_wrapper.dart';
import 'package:matt_murdock/web_lib/widgets/portafolio/portafolio.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _Landing();
}

class _Landing extends State<Landing> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    final theme = CustomAppTheme.of(context);
    return Container(
      decoration: BoxDecoration(gradient: theme.backgroundColor_100),
      child: Scaffold(
        backgroundColor: ColorUtils.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            child: PageWrapper(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  MobileMainMenuNavigationBar(),
                  HeroWidget(),
                  DesktopContent4()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
