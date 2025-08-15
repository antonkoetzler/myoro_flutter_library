part of '../myoro_card.dart';

/// UI of the [MyoroCard].
final class _Card extends StatelessWidget {
  final MyoroCardConfiguration _configuration;

  const _Card(this._configuration);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCardThemeExtension>();

    return Container(
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
