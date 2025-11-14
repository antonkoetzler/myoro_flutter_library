import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Image [Widget] to automatically resolve image file types.
///
/// Supposed to be used with asset images.
class MyoroImage extends StatelessWidget {
  const MyoroImage({super.key, required this.path, this.width, this.height, this.fit}) : assert(path.length > 0, '[MyoroImage]: [path] cannot be empty.');

  /// Path to the image.
  final String path;

  /// Width of the image.
  final double? width;

  /// Height of the image.
  final double? height;

  /// Fit of the image.
  final BoxFit? fit;

  /// Build function.
  @override
  Widget build(_) {
    final imageType = MyoroImageTypeEnum.tryParse(path.split('.').last);

    return switch (imageType) {
      MyoroImageTypeEnum.svg => SvgPicture.asset(path, width: width, height: height, fit: fit ?? BoxFit.contain),
      _ => Image.asset(path, width: width, height: height, fit: fit),
    };
  }
}
