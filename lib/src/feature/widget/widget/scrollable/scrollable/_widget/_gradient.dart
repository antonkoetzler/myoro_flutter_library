part of '../bundle/myoro_scrollable_bundle.dart';

/// Gradient [Widget] that is displayed when the scrollable is scrolled.
class _Gradient extends StatelessWidget {
  /// Default constructor.
  const _Gradient();

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroScrollableThemeExtension>();
    final style = context.watch<MyoroScrollableStyle>();
    final gradientDecoration = style.gradientDecoration ?? themeExtension.gradientDecoration;

    return IgnorePointer(child: Container(decoration: gradientDecoration));
  }
}
