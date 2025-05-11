import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Base drawer.
class MyoroDrawer extends StatelessWidget {
  /// Configuration.
  final MyoroDrawerConfiguration configuration;

  const MyoroDrawer({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    final bool isEndDrawer = context.read<MyoroDrawerController>().isEndDrawer;

    return Stack(
      children: [
        _Barrier(configuration),
        Row(
          mainAxisAlignment: !isEndDrawer ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [
            if (configuration.showCloseButton && isEndDrawer) _CloseButton(isEndDrawer),
            _Drawer(configuration),
            if (configuration.showCloseButton && !isEndDrawer) _CloseButton(isEndDrawer),
          ],
        ),
      ],
    );
  }
}

final class _Barrier extends StatelessWidget {
  final MyoroDrawerConfiguration _configuration;

  const _Barrier(this._configuration);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _configuration.barrierDismissable ? () => context.closeDrawer() : null,
      child: Container(color: MyoroColorDesignSystem.transparent),
    );
  }
}

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
              if (_configuration.title != null) ...[
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

final class _Title extends StatelessWidget {
  final MyoroDrawerConfiguration _configuration;

  const _Title(this._configuration);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDrawerThemeExtension>();

    return Text(
      _configuration.title!,
      style: _configuration.titleTextStyle ?? themeExtension.titleTextStyle,
    );
  }
}

final class _CloseButton extends StatelessWidget {
  final bool _isEndDrawer;

  const _CloseButton(this._isEndDrawer);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDrawerThemeExtension>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(
          borderBuilder: (_) => MyoroButtonVariantEnum.border(context),
          onTapUp: (_) => context.closeDrawer(),
        ),
        iconConfiguration: MyoroIconTextButtonIconConfiguration(
          icon:
              !_isEndDrawer
                  ? themeExtension.closeButtonDrawerIcon
                  : themeExtension.closeButtonEndDrawerIcon,
        ),
      ),
    );
  }
}
