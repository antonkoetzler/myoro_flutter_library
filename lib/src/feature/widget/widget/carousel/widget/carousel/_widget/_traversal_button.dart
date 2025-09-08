part of '../myoro_carousel.dart';

/// Traversal button of a [MyoroCarousel].
final class _TraversalButton extends StatelessWidget {
  const _TraversalButton(this._alignment, this._icon, this._onTapUp);

  final Alignment _alignment;
  final IconData _icon;
  final VoidCallback _onTapUp;

  @override
  Widget build(context) {
    final secondaryVariantThemeExtension = context.resolveThemeExtension<MyoroButtonSecondaryVariantThemeExtension>();

    return Align(
      alignment: _alignment,
      child: IntrinsicWidth(
        child: MyoroIconTextButton(
          configuration: MyoroIconTextButtonConfiguration(
            onTapUp: (_) => _onTapUp(),
            iconConfiguration: MyoroIconConfiguration(icon: _icon),
          ),
          themeExtension: MyoroIconTextButtonThemeExtension.fromVariant(secondaryVariantThemeExtension),
        ),
      ),
    );
  }
}
