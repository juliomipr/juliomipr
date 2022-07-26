import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matt_murdock/utils/custom_text_style.dart';
import 'package:matt_murdock/web_lib/shared_widgets/custom_card.dart';

List<double> factors = [0.20, 0.20, 0.20, 0.20];
double activeFactor = 0.28;
double inActiveFactor = 0.24;
bool pressed = false;

class DesktopContent4 extends ConsumerStatefulWidget {
  final String title;

  const DesktopContent4({Key? key, required this.title}) : super(key: key);

  @override
  ConsumerState<DesktopContent4> createState() => _DesktopContent4State();
}

class _DesktopContent4State extends ConsumerState<DesktopContent4> {
  // _onClosedPressed() {
  //   setState(() {
  //     factors[0] = inActiveFactor;
  //     factors[1] = inActiveFactor;
  //     factors[2] = inActiveFactor;
  //     factors[3] = inActiveFactor;
  //     pressed = false;
  //   });
  //}
  late Provider<double> widthProvider;

  @override
  Widget build(BuildContext context) {
    final customTextStyle = CustomTextStyle.of(context);
    widthProvider = Provider<double>((ref) {
      if (MediaQuery.of(context).size.width < 1200) {
        final widht = MediaQuery.of(context).size.width / factors.length;
        return widht;
      }

      return 1200 / (factors.length);
    });

    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 48.0, left: 61.0, bottom: 20.0),
              child: Text(
                'Previous Projects',
                style: customTextStyle.headlineStyle,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCard(
                    'assets/image/foodie.png',
                    align: Alignment(0.2, 0.0),
                    number: '01',
                    heightCard: 700.0,
                    name: 'Foodie',
                    factor: factors[0],
                    subTitle:
                        'Foodie application is an application for users to order a restaurant and find out which restaurant is located. This application greatly facilitates mobility.',
                    onEnter: () {
                      setState(() {
                        if (pressed) {
                          factors[0] = 0.7;
                          factors[1] = 0.1;
                          factors[2] = 0.1;
                          factors[3] = 0.1;
                        } else {
                          factors[0] = activeFactor;
                          factors[1] = inActiveFactor;
                          factors[2] = inActiveFactor;
                          factors[3] = inActiveFactor;
                        }
                      });
                    },
                    onExit: () {
                      setState(() {
                        factors[0] = 0.25;
                        factors[1] = 0.25;
                        factors[2] = 0.25;
                        factors[3] = 0.25;
                      });
                    },
                    onPressed: () {
                      setState(() {
                        factors[0] = 0.7;
                        factors[1] = 0.1;
                        factors[2] = 0.1;
                        factors[3] = 0.1;
                        pressed = true;
                      });
                    },
                    onClosePressed: () {
                      setState(() {
                        factors[0] = inActiveFactor;
                        factors[1] = inActiveFactor;
                        factors[2] = inActiveFactor;
                        factors[3] = inActiveFactor;
                        pressed = false;
                      });
                    },
                  ),
                  CustomCard(
                    'assets/image/grocery.png',
                    align: Alignment(-0.1, 0.0),
                    number: '02',
                    name: 'Grocery',
                    heightCard: 700.0,
                    factor: factors[1],
                    subTitle:
                        'Grocery application is an application that makes it easy for users to buy basic necessities such as vegetables anywhere, anytime.',
                    onEnter: () {
                      setState(() {
                        if (pressed) {
                          factors[0] = 0.1;
                          factors[1] = 0.7;
                          factors[2] = 0.1;
                          factors[3] = 0.1;
                        } else {
                          factors[0] = inActiveFactor;
                          factors[1] = activeFactor;
                          factors[2] = inActiveFactor;
                          factors[3] = inActiveFactor;
                        }
                      });
                    },
                    onExit: () {
                      setState(() {
                        factors[0] = 0.25;
                        factors[1] = 0.25;
                        factors[2] = 0.25;
                        factors[3] = 0.25;
                      });
                    },
                    onPressed: () {
                      setState(() {
                        factors[0] = 0.1;
                        factors[1] = 0.7;
                        factors[2] = 0.1;
                        factors[3] = 0.1;
                        pressed = true;
                      });
                    },
                    onClosePressed: () {
                      setState(() {
                        factors[0] = inActiveFactor;
                        factors[1] = inActiveFactor;
                        factors[2] = inActiveFactor;
                        factors[3] = inActiveFactor;
                        pressed = false;
                      });
                    },
                  ),
                  CustomCard(
                    'assets/image/crypto.png',
                    align: Alignment(-0.1, 0.0),
                    number: '03',
                    name: 'Crypto',
                    heightCard: 700.0,
                    factor: factors[2],
                    subTitle:
                        'Crypto application is a blockchain application where users can easily view their invested portfolios in cryptocurency and buy bitcoin and sell bitcoin easily.',
                    onEnter: () {
                      setState(() {
                        if (pressed) {
                          factors[0] = 0.1;
                          factors[1] = 0.1;
                          factors[2] = 0.7;
                          factors[3] = 0.1;
                        } else {
                          factors[0] = inActiveFactor;
                          factors[1] = inActiveFactor;
                          factors[2] = activeFactor;
                          factors[3] = inActiveFactor;
                        }
                      });
                    },
                    onExit: () {
                      setState(() {
                        factors[0] = 0.25;
                        factors[1] = 0.25;
                        factors[2] = 0.25;
                        factors[3] = 0.25;
                      });
                    },
                    onPressed: () {
                      setState(() {
                        factors[0] = 0.1;
                        factors[1] = 0.1;
                        factors[2] = 0.7;
                        factors[3] = 0.1;
                        pressed = true;
                      });
                    },
                    onClosePressed: () {
                      setState(() {
                        factors[0] = inActiveFactor;
                        factors[1] = inActiveFactor;
                        factors[2] = inActiveFactor;
                        factors[3] = inActiveFactor;
                        pressed = false;
                      });
                    },
                  ),
                  CustomCard(
                    'assets/image/recipes.png',
                    align: Alignment(0.0, 0.0),
                    number: '04',
                    name: 'Recipes',
                    heightCard: 700.0,
                    factor: factors[3],
                    subTitle:
                        'Recipe application is a food recipe application where users can easily view the recipes provided easily and view video recipe videos easily and precisely.',
                    onEnter: () {
                      setState(() {
                        if (pressed) {
                          factors[0] = 0.1;
                          factors[1] = 0.1;
                          factors[2] = 0.1;
                          factors[3] = 0.7;
                        } else {
                          factors[0] = inActiveFactor;
                          factors[1] = inActiveFactor;
                          factors[2] = inActiveFactor;
                          factors[3] = activeFactor;
                        }
                      });
                    },
                    onExit: () {
                      setState(() {
                        factors[0] = 0.25;
                        factors[1] = 0.25;
                        factors[2] = 0.25;
                        factors[3] = 0.25;
                      });
                    },
                    onPressed: () {
                      setState(() {
                        factors[0] = 0.1;
                        factors[1] = 0.1;
                        factors[2] = 0.1;
                        factors[3] = 0.7;
                        pressed = true;
                      });
                    },
                    onClosePressed: () {
                      setState(() {
                        factors[0] = inActiveFactor;
                        factors[1] = inActiveFactor;
                        factors[2] = inActiveFactor;
                        factors[3] = inActiveFactor;
                        pressed = false;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
