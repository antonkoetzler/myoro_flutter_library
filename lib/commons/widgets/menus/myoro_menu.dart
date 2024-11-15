import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A menu widget that should not be used in production code, it is used
/// within [MyoroDropdown] & [MyoroInput] similar to the software dmenu.
final class MyoroMenu extends StatelessWidget {
  /// Max height constraint of the menu.
  final double? maxHeight;

  /// Max width constraint of the menu.
  final double? maxWidth;

  /// Size of the [Icon] in [_Item].
  final double? iconSize;

  /// Text style of the [Text] in [_Item].
  final TextStyle? textStyle;

  /// Text alignment of the [Text] in [_Item].
  final TextAlign? textAlign;

  /// Items in the menu.
  final List<MyoroMenuItem> items;

  const MyoroMenu({
    super.key,
    this.maxHeight,
    this.maxWidth,
    this.iconSize,
    this.textStyle,
    this.textAlign,
    this.items = const [],
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final children = items
        .map<Widget>(
          (MyoroMenuItem item) => _Item(
            item,
            iconSize,
            textStyle,
            textAlign,
          ),
        )
        .toList();

    return ClipRRect(
      borderRadius: themeExtension.borderRadius,
      child: Container(
        decoration: BoxDecoration(
          color: themeExtension.backgroundColor,
          border: themeExtension.border,
          borderRadius: themeExtension.borderRadius,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: maxHeight ?? themeExtension.maxHeight,
            maxWidth: maxWidth ?? themeExtension.maxWidth,
          ),
          child: children.isNotEmpty
              ? MyoroScrollable(
                  scrollableType: MyoroScrollableEnum.customScrollView,
                  children: children,
                )
              : const _EmptyMenuDialog(),
        ),
      ),
    );
  }
}

final class _Item extends StatelessWidget {
  final MyoroMenuItem item;
  final double? iconSize;
  final TextStyle? textStyle;
  final TextAlign? textAlign;

  const _Item(
    this.item,
    this.iconSize,
    this.textStyle,
    this.textAlign,
  );

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextHoverButton(
      icon: item.icon,
      iconSize: iconSize,
      text: item.text,
      textStyle: textStyle,
      textAlign: textAlign,
      borderRadius: BorderRadius.zero,
      onPressed: item.onPressed,
    );
  }
}

final class _EmptyMenuDialog extends StatelessWidget {
  const _EmptyMenuDialog();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No items to display.',
        style: context.resolveThemeExtension<MyoroMenuThemeExtension>().emptyMenuDialogTextStyle,
      ),
    );
  }
}
