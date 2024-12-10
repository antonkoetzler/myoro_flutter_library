import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Base card.
final class MyoroCard extends StatelessWidget {
  /// Title of the card.
  final String? title;

  /// Text style of [title].
  final TextStyle? titleTextStyle;

  /// Padding of [child] (not the [MyoroCard]).
  final EdgeInsets? padding;

  /// Width of [_Card].
  final double? width;

  /// Height of [_Card].
  final double? height;

  /// Content of the card.
  final Widget child;

  const MyoroCard({
    super.key,
    this.title,
    this.titleTextStyle,
    this.padding,
    this.width,
    this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null) _Title(title!, titleTextStyle),
        SizedBox(height: context.resolveThemeExtension<MyoroCardThemeExtension>().titleCardSpacing),
        Flexible(child: _Card(width, height, child)),
      ],
    );
  }
}

final class _Title extends StatelessWidget {
  final String _title;
  final TextStyle? _titleTextStyle;

  const _Title(this._title, this._titleTextStyle);

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: _titleTextStyle ?? context.resolveThemeExtension<MyoroCardThemeExtension>().textStyle,
    );
  }
}

final class _Card extends StatelessWidget {
  final double? _width;
  final double? _height;
  final Widget _child;

  const _Card(this._width, this._height, this._child);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroCardThemeExtension>();

    return Container(
      width: _width,
      height: _height,
      padding: themeExtension.padding,
      decoration: BoxDecoration(
        color: themeExtension.primaryColor,
        border: themeExtension.border,
        borderRadius: themeExtension.borderRadius,
      ),
      child: _child,
    );
  }
}
