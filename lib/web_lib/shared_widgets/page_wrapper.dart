import 'package:flutter/material.dart';

class PageWrapper extends StatelessWidget {
  const PageWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 1201,
            minWidth: 600,
            minHeight: MediaQuery.of(context).size.height * 0.4,
            maxHeight: double.infinity,
          ),
          child: child,
        ));
  }
}
