import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Base card.
class MyoroCard extends StatelessWidget {
  /// Configuration.
  final MyoroCardConfiguration configuration;

  const MyoroCard({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroCardThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.titleCardSpacing,
      children: [
        if (configuration.title.isNotEmpty) _Title(configuration),
        Flexible(child: _Card(configuration)),
      ],
    );
  }
}

final class _Title extends StatelessWidget {
  final MyoroCardConfiguration _configuration;

  const _Title(this._configuration);

  @override
  Widget build(BuildContext context) {
    return Text(
      _configuration.title,
      style:
          _configuration.titleTextStyle ??
          context.resolveThemeExtension<MyoroCardThemeExtension>().textStyle,
    );
  }
}

final class _Card extends StatelessWidget {
  final MyoroCardConfiguration _configuration;

  const _Card(this._configuration);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroCardThemeExtension>();

    return Container(
      width: _configuration.width,
      height: _configuration.height,
      constraints: _configuration.constraints,
      padding: _configuration.padding ?? themeExtension.padding,
      decoration: BoxDecoration(
        color: themeExtension.backgroundColor,
        border: themeExtension.border,
        borderRadius: themeExtension.borderRadius,
      ),
      child: _configuration.child,
    );
  }
}
