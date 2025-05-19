part of '../myoro_card.dart';

/// Title of the [MyoroCard].
final class _Title extends StatelessWidget {
  final MyoroCardConfiguration _configuration;

  const _Title(this._configuration);

  @override
  Widget build(BuildContext context) {
    return Text(
      _configuration.title,
      style: _configuration.titleTextStyle ?? context.resolveThemeExtension<MyoroCardThemeExtension>().textStyle,
    );
  }
}
