part of '../myoro_drawer.dart';

/// The actual drawer of the [MyoroDrawer].
final class _Drawer extends StatelessWidget {
  final MyoroDrawerConfiguration _configuration;

  const _Drawer(this._configuration);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDrawerThemeExtension>();

    return Padding(
      padding: themeExtension.drawerPadding,
      child: Drawer(
        shape: themeExtension.drawerShape,
        child: Padding(
          padding: themeExtension.drawerContentPadding,
          child: Column(
            children: [
              if (_configuration.title.isNotEmpty) ...[
                _Title(_configuration),
                MyoroBasicDivider(
                  configuration: MyoroBasicDividerConfiguration(
                    direction: Axis.horizontal,
                    padding: themeExtension.titleContentDividerPadding,
                  ),
                ),
              ],
              Expanded(child: _configuration.child),
            ],
          ),
        ),
      ),
    );
  }
}
