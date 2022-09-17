// ignore_for_file: library_private_types_in_public_api

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matt_murdock/utils/constant.dart';
import 'package:matt_murdock/utils/custom_text_style.dart';

class CustomCard extends ConsumerStatefulWidget {
  final String image;
  final Alignment align;
  final String number;
  final String name;
  final double factor;
  final Function onEnter;
  final Function onExit;
  final Function onPressed;
  final Function onClosePressed;
  final String subTitle;
  final double heightCard;
  const CustomCard(
    this.image, {
    Key? key,
    required this.align,
    required this.heightCard,
    required this.number,
    required this.name,
    required this.factor,
    required this.onEnter,
    required this.onExit,
    required this.onPressed,
    required this.onClosePressed,
    required this.subTitle,
  }) : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends ConsumerState<CustomCard> {
  Color color = Colors.black12;

  late Provider<double> widthProvider;

  @override
  Widget build(BuildContext context) {
    final customTextStyle = CustomTextStyle.of(context);

    widthProvider = Provider<double>((ref) {
      if (MediaQuery.of(context).size.width < tabletMaxWidth) {
        final widht = MediaQuery.of(context).size.width;
        return widht;
      }

      return tabletMaxWidth;
    });

    return MouseRegion(
      opaque: false,
      onEnter: (value) {
        widget.onEnter();
      },
      onExit: (value) {
        widget.onExit();
      },
      child: GestureDetector(
        onTap: () {
          widget.onPressed();
        },
        child: Stack(
          children: [
            Center(
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.white,
                    width: 0.2,
                  ),
                ),
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      widget.factor == 0.25 || widget.factor == 0.24
                          ? color
                          : Colors.transparent,
                      widget.factor == 0.25 || widget.factor == 0.24
                          ? color
                          : Colors.transparent,
                      Colors.black,
                    ],
                  ),
                ),
                curve: Curves.ease,
                duration: const Duration(milliseconds: 275),
                height: widget.heightCard,
                width: (ref.watch(widthProvider) * widget.factor),
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                  alignment: widget.align,
                ),
              ),
            ),
            Positioned(
              left: 10.0,
              bottom: 10.0,
              child: AnimatedOpacity(
                opacity:
                    (widget.factor == 0.7 || widget.factor == 0.1) ? 0.0 : 1.0,
                duration: const Duration(milliseconds: 200),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: (widget.factor == 0.7 || widget.factor == 0.1)
                      ? 0.0
                      : 40.0,
                  width: 80.0,
                  child:
                      Text(widget.number, style: customTextStyle.headlineStyle),
                ),
              ),
            ),
            Positioned(
              right: -40.0,
              bottom: 60.0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: 130.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height -
                          widget.name.length * 5.0,
                      width: 1.5,
                      alignment: const Alignment(0.0, -1.0),
                      child: AnimatedContainer(
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 375),
                        height: (widget.factor == 0.28 ||
                                widget.factor == 0.1 ||
                                widget.factor == 0.7)
                            ? MediaQuery.of(context).size.height
                            : 0.0,
                        width: 3.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                    ),

                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 450),
                      opacity: (widget.factor == 0.28 ||
                              widget.factor == 0.1 ||
                              widget.factor == 0.7)
                          ? 1.0
                          : 0.0,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 450),
                        height: (widget.factor == 0.28 ||
                                widget.factor == 0.1 ||
                                widget.factor == 0.7)
                            ? 30.0
                            : 0.0,
                        width: 120.0,
                        child: Transform.rotate(
                          angle: -pi / 2,
                          child: Text(
                            widget.name,
                            style: customTextStyle.titleStyle,
                          ),
                        ),
                      ),
                    ), //SizedBox(height: 60.0),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              curve: Curves.easeOut,
              duration: const Duration(milliseconds: 375),
              top: (widget.factor == 0.7)
                  ? MediaQuery.of(context).size.height * 0.35
                  : MediaQuery.of(context).size.height -
                      widget.name.length * 7.0,
              right: 5.0,
              child: AnimatedOpacity(
                opacity: (widget.factor == 0.7) ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 200),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: IconButton(
                      icon: const Icon(Icons.play_arrow), onPressed: () {}),
                ),
              ),
            ),
            AnimatedPositioned(
              left: (widget.factor == 0.7) ? 0.0 : -300.0,
              duration: const Duration(milliseconds: 475),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: 300.0,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black54,
                    Colors.transparent,
                  ]),
                ),
              ),
            ),
            AnimatedPositioned(
              left: (widget.factor == 0.7) ? 10.0 : -300.0,
              duration: const Duration(milliseconds: 475),
              child: AnimatedOpacity(
                opacity: (widget.factor == 0.7) ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 475),
                child: SizedBox(
                  height: 350.0,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 50.0,
                        ),
                        Text(
                          widget.name,
                          style: customTextStyle.titleStyle,
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          widget.subTitle,
                          style: customTextStyle.subtitleStyle.copyWith(
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 35.0,
              top: 0.0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                height: widget.factor == 0.7 ? 30.0 : 0.0,
                width: widget.factor == 0.7 ? 50.0 : 0.0,
                child: IconButton(
                  icon: const Icon(
                    Icons.close,
                    size: 40.0,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    widget.onClosePressed();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
