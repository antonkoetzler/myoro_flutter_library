import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Base drawer.
final class MyoroDrawer extends StatelessWidget {
  /// Title of the drawer.
  final String? title;

  /// [TextStyle] of the text in [_Header].
  final TextStyle? titleTextStyle;

  /// Whether or not to show the close button.
  final bool showCloseButton;

  /// Whether or not clicking anywhere but the drawer will close the drawer.
  final bool barrierDismissable;

  /// Content of the drawer.
  final Widget child;

  const MyoroDrawer({
    super.key,
    this.title,
    this.titleTextStyle,
    this.showCloseButton = true,
    this.barrierDismissable = true,
    required this.child,
  });

  static Finder finder({
    String? title,
    bool titleEnabled = false,
    TextStyle? titleTextStyle,
    bool titleTextStyleEnabled = false,
    bool? showCloseButton,
    bool showCloseButtonEnabled = false,
    bool? barrierDismissable,
    bool barrierDismissableEnabled = false,
    Widget? child,
    bool childEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroDrawer &&
          (titleEnabled ? w.title == title : true) &&
          (titleTextStyleEnabled ? w.titleTextStyle == titleTextStyle : true) &&
          (showCloseButtonEnabled
              ? w.showCloseButton == showCloseButton
              : true) &&
          (barrierDismissableEnabled
              ? w.barrierDismissable == barrierDismissable
              : true) &&
          (childEnabled ? w.child == child : true),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isEndDrawer = context.read<MyoroDrawerController>().isEndDrawer;

    return Stack(
      children: [
        _Barrier(barrierDismissable),
        Row(
          mainAxisAlignment:
              !isEndDrawer ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [
            if (showCloseButton && isEndDrawer) _CloseButton(isEndDrawer),
            _Drawer(title, titleTextStyle, child),
            if (showCloseButton && !isEndDrawer) _CloseButton(isEndDrawer),
          ],
        ),
      ],
    );
  }
}

final class _Barrier extends StatelessWidget {
  final bool _barrierDismissable;

  const _Barrier(this._barrierDismissable);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _barrierDismissable ? () => context.closeDrawer() : null,
      child: Container(color: MyoroColorDesignSystem.transparent),
    );
  }
}

final class _Drawer extends StatelessWidget {
  final String? _title;
  final TextStyle? _titleTextStyle;
  final Widget _child;

  const _Drawer(this._title, this._titleTextStyle, this._child);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroDrawerThemeExtension>();

    return Padding(
      padding: themeExtension.drawerPadding,
      child: Drawer(
        shape: themeExtension.drawerShape,
        child: Padding(
          padding: themeExtension.drawerContentPadding,
          child: Column(
            children: [
              if (_title != null) ...[
                _Title(_title, _titleTextStyle),
                MyoroBasicDivider(
                  configuration: MyoroBasicDividerConfiguration(
                    direction: Axis.horizontal,
                    padding: themeExtension.titleContentDividerPadding,
                  ),
                ),
              ],
              Expanded(child: _child),
            ],
          ),
        ),
      ),
    );
  }
}

final class _Title extends StatelessWidget {
  final String _title;
  final TextStyle? _titleTextStyle;

  const _Title(this._title, this._titleTextStyle);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroDrawerThemeExtension>();

    return Text(
      _title,
      style: _titleTextStyle ?? themeExtension.titleTextStyle,
    );
  }
}

final class _CloseButton extends StatelessWidget {
  final bool _isEndDrawer;

  const _CloseButton(this._isEndDrawer);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroDrawerThemeExtension>();

    return MyoroIconTextHoverButton(
      configuration: MyoroHoverButtonConfiguration(
        primaryColor: themeExtension.closeButtonBackgroundColor,
        bordered: themeExtension.closeButtonBordered,
      ),
      icon:
          !_isEndDrawer
              ? themeExtension.closeButtonDrawerIcon
              : themeExtension.closeButtonEndDrawerIcon,
      onPressed: () => context.closeDrawer(),
    );
  }
}
