import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;
  final double? scale;
  final double? width;
  final double? height;
  final Color? color;
  final Animation<double>? opacity;
  final BlendMode? colorBlendMode;
  final BoxFit? fit;
  final AlignmentGeometry alignment = Alignment.center;
  final ImageRepeat repeat = ImageRepeat.noRepeat;
  final Rect? centerSlice;

  const ImageWidget( {
    super.key,
    required this.imagePath,
    this.scale,
    this.width,
    this.height,
    this.color,
    this.opacity,
    this.colorBlendMode,
    this.fit,
    this.centerSlice,
  });

  @override
  Widget build(BuildContext context) {
    String extension = imagePath.split(".").last;
    if (imagePath.startsWith("http://")) {
      return CachedNetworkImage(
        imageUrl: imagePath,
        height: height,
        width: width,
        scale: scale ?? 1.0,
        fit: fit,
        colorBlendMode: colorBlendMode,
      );
    } else if (["jpg", "png", "jpeg"].contains(extension)) {
      return Image.asset(
        imagePath,
        height: height,
        width: width,
        scale: scale,
        fit: fit,
        colorBlendMode: colorBlendMode,
      );
    } else if (imagePath.endsWith(".svg")) {
      return SvgPicture.asset(
        imagePath,
        height: height,
        width: width,
        fit: fit ?? BoxFit.contain,
        color: color,
      );
    } else {
      return Icon(Icons.broken_image);
    }
  }
}
