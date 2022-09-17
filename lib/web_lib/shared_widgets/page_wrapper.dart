import 'package:flutter/material.dart';

class PageWrapper extends StatelessWidget {
  const PageWrapper({
    Key? key,
    required this.child,
    this.width = 1201,
  }) : super(key: key);

  final Widget child;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
          constraints: BoxConstraints(maxWidth: width,
            minWidth: 600,
            minHeight: MediaQuery.of(context).size.height * 0.4,
            maxHeight: double.infinity,
          ),
          child: child,
        ));
  }
}
