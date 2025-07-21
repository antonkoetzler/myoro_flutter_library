part of '../myoro_drawer.dart';

/// Title of the [MyoroDrawer].
final class _Title extends StatelessWidget {
  final MyoroDrawerConfiguration _configuration;

  const _Title(this._configuration);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroDrawerThemeExtension>();

    return Text(_configuration.title, style: _configuration.titleTextStyle ?? themeExtension.titleTextStyle);
  }
}
