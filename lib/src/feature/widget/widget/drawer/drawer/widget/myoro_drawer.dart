import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_barrier.dart';
part '../_widget/_close_button.dart';
part '../_widget/_drawer.dart';
part '../_widget/_title.dart';

/// Base drawer.
class MyoroDrawer extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroDrawerStyle();

  /// Default value of [title].
  static const titleDefaultValue = kMyoroEmptyString;

  /// Default value of [showCloseButton].
  static const showCloseButtonDefaultValue = true;

  /// Default value of [barrierDismissable].
  static const barrierDismissableDefaultValue = true;

  /// Default constructor.
  const MyoroDrawer({
    super.key,
    this.style = styleDefaultValue,
    this.title = titleDefaultValue,
    this.showCloseButton = showCloseButtonDefaultValue,
    this.barrierDismissable = barrierDismissableDefaultValue,
    required this.child,
  });

  /// Style.
  final MyoroDrawerStyle style;

  /// Title of the drawer.
  final String title;

  /// Whether or not to show the close button.
  final bool showCloseButton;

  /// Whether or not clicking anywhere but the drawer will close the drawer.
  final bool barrierDismissable;

  /// Content of the drawer.
  final Widget child;

  @override
  Widget build(context) {
    final controller = context.read<MyoroDrawerController>();
    final isEndDrawerController = controller.isEndDrawerController;

    final themeExtension = context.resolveThemeExtension<MyoroDrawerThemeExtension>();
    final padding = style.padding ?? themeExtension.padding ?? EdgeInsets.zero;
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;

    return InheritedProvider.value(
      value: style,
      child: Stack(
        children: [
          _Barrier(barrierDismissable),
          ValueListenableBuilder(
            valueListenable: isEndDrawerController,
            builder: (_, isEndDrawer, _) {
              return Padding(
                padding: padding,
                child: Row(
                  spacing: spacing,
                  children: [
                    if (showCloseButton && isEndDrawer) const _CloseButton(),
                    Expanded(child: _Drawer(title, child)),
                    if (showCloseButton && !isEndDrawer) const _CloseButton(),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
