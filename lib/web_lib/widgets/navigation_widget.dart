import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matt_murdock/utils/colors_utils.dart';
import 'package:matt_murdock/utils/custom_app_theme.dart';
import 'package:matt_murdock/utils/custom_text_style.dart';

class MainMenuNavigationBar extends StatefulWidget {
  const MainMenuNavigationBar({Key? key}) : super(key: key);

  @override
  State<MainMenuNavigationBar> createState() => _MainMenuNavigationBar();
}

class _MainMenuNavigationBar extends State<MainMenuNavigationBar> {
  Color color = ColorUtils.text_100;

  @override
  Widget build(BuildContext context) {
    final customAppTheme = CustomAppTheme.of(context);
    final customTextStyle = CustomTextStyle.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/navigation_bar/logo.svg',
            height: 24,
            width: 24,
            color: customAppTheme.defaultColorTheme,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MouseRegion(
                onHover: (event) {
                  setState(() {
                    color = customAppTheme.defaultColorTheme;
                  });
                },
                onExit: (event) {
                  setState(() {
                    color = customAppTheme.defaultTextTheme;
                  });
                },
                child: InkWell(
                  child: Text(
                    'About me',
                    style:
                        customTextStyle.textButtonStyle.copyWith(color: color),
                  ),
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              Image.asset(
                'assets/socials/linkedin.png',
                height: 20,
                width: 20,
                color: customAppTheme.defaultColorTheme,
              ),
              const SizedBox(
                width: 24,
              ),
              Image.asset(
                'assets/socials/whatsapp.png',
                height: 20,
                width: 20,
                color: customAppTheme.defaultColorTheme,
              ),
              const SizedBox(
                width: 24,
              ),
              Image.asset(
                'assets/socials/github.png',
                height: 20,
                width: 20,
                color: customAppTheme.defaultColorTheme,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
