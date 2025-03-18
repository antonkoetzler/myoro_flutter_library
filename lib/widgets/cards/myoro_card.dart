import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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

  /// Constraints of [_Card].
  final BoxConstraints? constraints;

  /// Content of the card.
  final Widget child;

  const MyoroCard({
    super.key,
    this.title,
    this.titleTextStyle,
    this.padding,
    this.width,
    this.height,
    this.constraints,
    required this.child,
  });

  static Finder finder({
    String? title,
    bool titleEnabled = false,
    TextStyle? titleTextStyle,
    bool titleTextStyleEnabled = false,
    EdgeInsets? padding,
    bool paddingEnabled = false,
    double? width,
    bool widthEnabled = false,
    double? height,
    bool heightEnabled = false,
    BoxConstraints? constraints,
    bool constraintsEnabled = false,
    Widget? child,
    bool childEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroCard &&
          (titleEnabled ? w.title == title : true) &&
          (titleTextStyleEnabled ? w.titleTextStyle == titleTextStyle : true) &&
          (paddingEnabled ? w.padding == padding : true) &&
          (widthEnabled ? w.width == width : true) &&
          (heightEnabled ? w.height == height : true) &&
          (constraintsEnabled ? w.constraints == constraints : true) &&
          (childEnabled ? w.child == child : true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (title != null) ...[
          _Title(title!, titleTextStyle),
          SizedBox(
            height:
                context
                    .resolveThemeExtension<MyoroCardThemeExtension>()
                    .titleCardSpacing,
          ),
        ],
        Flexible(child: _Card(padding, width, height, constraints, child)),
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
      style:
          _titleTextStyle ??
          context.resolveThemeExtension<MyoroCardThemeExtension>().textStyle,
    );
  }
}

final class _Card extends StatelessWidget {
  final EdgeInsets? _padding;
  final double? _width;
  final double? _height;
  final BoxConstraints? _constraints;
  final Widget _child;

  const _Card(
    this._padding,
    this._width,
    this._height,
    this._constraints,
    this._child,
  );

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroCardThemeExtension>();

    return Container(
      width: _width,
      height: _height,
      constraints: _constraints,
      padding: _padding ?? themeExtension.padding,
      decoration: BoxDecoration(
        color: themeExtension.backgroundColor,
        border: themeExtension.border,
        borderRadius: themeExtension.borderRadius,
      ),
      child: _child,
    );
  }
}
