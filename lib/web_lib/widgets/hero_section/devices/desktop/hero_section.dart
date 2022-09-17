import 'package:flutter/widgets.dart';
import 'package:matt_murdock/utils/custom_text_style.dart';

class DesktopHeroSection extends StatelessWidget {
  const DesktopHeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customTextStyle = CustomTextStyle.of(context);
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Row(
            children: [
              SizedBox(
                width: width * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What is Lorem Ipsum?',
                      style: customTextStyle.headlineStyle,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using `Content here, content here`, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for `lorem ipsum` will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
                      style: customTextStyle.textButtonStyle,
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/mock/header.png',
                height: 560,
                width: 560,
              )
            ],
          ),
        ),
      ],
    );
  }
}
