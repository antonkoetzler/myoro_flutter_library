part of '../widget/myoro_field.dart';

/// Horizontal layout of [MyoroField].
final class _HorizontalLayout extends StatelessWidget {
  /// Default constructor.
  const _HorizontalLayout();

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFieldThemeExtension>();
    final style = context.watch<MyoroFieldStyle>();
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;

    return _Layout(
      Row(
        spacing: spacing,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          _Label(),
          Flexible(child: _Data()),
        ],
      ),
    );
  }
}
