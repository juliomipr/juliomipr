import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageView extends ConsumerStatefulWidget {
  const ImageView({
    super.key,
    required this.imageUrl,
    this.isSvg = false,
    this.isFromNetwork = false,
    this.height = 24,
    this.width = 24,
  });
  final bool isSvg;
  final bool isFromNetwork;
  final double height;
  final double width;
  final String imageUrl;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ImageView();
}

class _ImageView extends ConsumerState<ImageView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: !widget.isSvg
          ? Image.asset(
              widget.imageUrl,
              width: widget.width,
              height: widget.height,
            )
          : !widget.isFromNetwork
              ? SvgPicture.asset(
                  widget.imageUrl,
                  width: widget.width,
                  height: widget.height,
                )
              : Image.network(
                  widget.imageUrl,
                  width: widget.width,
                  height: widget.height,
                ),
    );
  }
}
