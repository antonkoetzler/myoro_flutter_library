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
  final MyoroDataConfiguration<MyoroMenuItem> dataConfiguration;

  const MyoroMenu({
    super.key,
    this.maxHeight,
    this.maxWidth,
    this.iconSize,
    this.textStyle,
    this.textAlign,
    required this.dataConfiguration,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: themeExtension.borderRadius,
      child: Container(
        decoration: BoxDecoration(
          color: themeExtension.primaryColor,
          border: themeExtension.border,
          borderRadius: themeExtension.borderRadius,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: maxHeight ?? themeExtension.maxHeight,
            maxWidth: maxWidth ?? themeExtension.maxWidth,
          ),
          child: MyoroResolver(
            request: () async => await dataConfiguration.items,
            builder: (List<MyoroMenuItem>? items, MyoroRequestEnum status, _, __) {
              return switch (status) {
                MyoroRequestEnum.idle => const _Loader(),
                MyoroRequestEnum.loading => const _Loader(),
                MyoroRequestEnum.success => _Items(items!, iconSize, textStyle, textAlign),
                MyoroRequestEnum.error => const _DialogText('Error getting items.'),
              };
            },
          ),
        ),
      ),
    );
  }
}

final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) => const Center(child: MyoroCircularLoader());
}

final class _Items extends StatelessWidget {
  final List<MyoroMenuItem> items;
  final double? iconSize;
  final TextStyle? textStyle;
  final TextAlign? textAlign;

  const _Items(
    this.items,
    this.iconSize,
    this.textStyle,
    this.textAlign,
  );

  @override
  Widget build(BuildContext context) {
    return items.isNotEmpty
        ? MyoroScrollable(
            scrollableType: MyoroScrollableEnum.singleChildScrollView,
            children: items
                .map<Widget>(
                  (MyoroMenuItem item) => _Item(
                    item,
                    iconSize,
                    textStyle,
                    textAlign,
                  ),
                )
                .toList(),
          )
        : const _DialogText('No items to display.');
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
      configuration: MyoroHoverButtonConfiguration(
        borderRadius: BorderRadius.zero,
        isHovered: item.isHovered,
      ),
      icon: item.icon,
      iconSize: iconSize,
      text: item.text,
      textStyle: textStyle,
      textAlign: textAlign,
      onPressed: item.onPressed,
    );
  }
}

final class _DialogText extends StatelessWidget {
  final String text;

  const _DialogText(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: context.resolveThemeExtension<MyoroMenuThemeExtension>().dialogTextStyle,
      ),
    );
  }
}
