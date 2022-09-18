import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:matt_murdock/helper/url_helper.dart';
import 'package:matt_murdock/utils/colors_utils.dart';
import 'package:matt_murdock/utils/custom_app_theme.dart';
import 'package:matt_murdock/utils/custom_text_style.dart';

class DesktopMainMenuNavigationBar extends StatefulWidget {
  const DesktopMainMenuNavigationBar({Key? key}) : super(key: key);

  @override
  State<DesktopMainMenuNavigationBar> createState() =>
      _DesktopMainMenuNavigationBar();
}

class _DesktopMainMenuNavigationBar
    extends State<DesktopMainMenuNavigationBar> {
  Color color = ColorUtils.text_100;

  @override
  Widget build(BuildContext context) {
    final theme = CustomAppTheme.of(context);
    final textStyle = CustomTextStyle.of(context);
    final Row row = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/navigation_bar/logo.svg',
          height: 24,
          width: 24,
          color: theme.defaultColorTheme,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MouseRegion(
              onHover: (event) {
                setState(() {
                  color = theme.defaultColorTheme;
                });
              },
              onExit: (event) {
                setState(() {
                  color = theme.defaultTextTheme;
                });
              },
              child: InkWell(
                child: Text(
                  'About me',
                  style: textStyle.textButtonStyle.copyWith(color: color),
                ),
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            InkWell(
              child: Image.asset(
                'assets/socials/gmail.png',
                height: 20,
                width: 20,
                color: theme.defaultColorTheme,
              ),
              onTap: () async => await handleUriWebsite(UriWebsite.gmail),
            ),
            const SizedBox(
              width: 24,
            ),
            InkWell(
              child: Image.asset(
                'assets/socials/linkedin.png',
                height: 20,
                width: 20,
                color: theme.defaultColorTheme,
              ),
              onTap: () async => await handleUriWebsite(UriWebsite.linkedIn),
            ),
            const SizedBox(
              width: 24,
            ),
            InkWell(
              child: Image.asset(
                'assets/socials/whatsapp.png',
                height: 20,
                width: 20,
                color: theme.defaultColorTheme,
              ),
              onTap: () async => await handleUriWebsite(UriWebsite.whatsapp),
            ),
            const SizedBox(
              width: 24,
            ),
            InkWell(
              child: Image.asset(
                'assets/socials/github.png',
                height: 20,
                width: 20,
                color: theme.defaultColorTheme,
              ),
              onTap: () async => await handleUriWebsite(UriWebsite.github),
            ),
            const SizedBox(
              width: 24,
            ),
            InkWell(
              child: Image.asset(
                'assets/socials/gitlab.png',
                height: 20,
                width: 20,
                color: theme.defaultColorTheme,
              ),
              onTap: () async => await handleUriWebsite(UriWebsite.gitlab),
            ),
          ],
        ),
      ],
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      child: row,
    );
  }
}
