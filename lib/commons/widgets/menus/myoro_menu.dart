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
  final List<MyoroMenuItem> _items;
  final double? _iconSize;
  final TextStyle? _textStyle;
  final TextAlign? _textAlign;

  const _Items(
    this._items,
    this._iconSize,
    this._textStyle,
    this._textAlign,
  );

  @override
  Widget build(BuildContext context) {
    return _items.isNotEmpty
        ? MyoroScrollable(
            scrollableType: MyoroScrollableEnum.singleChildScrollView,
            children: _items
                .map<Widget>(
                  (MyoroMenuItem item) => _Item(
                    item,
                    _iconSize,
                    _textStyle,
                    _textAlign,
                  ),
                )
                .toList(),
          )
        : const _DialogText('No items to display.');
  }
}

final class _Item extends StatelessWidget {
  final MyoroMenuItem _item;
  final double? _iconSize;
  final TextStyle? _textStyle;
  final TextAlign? _textAlign;

  const _Item(
    this._item,
    this._iconSize,
    this._textStyle,
    this._textAlign,
  );

  @override
  Widget build(BuildContext context) {
    final configuration = MyoroHoverButtonConfiguration(
      borderRadius: context.resolveThemeExtension<MyoroMenuThemeExtension>().itemBorderRadius,
      isHovered: _item.isHovered,
    );

    if (_item.itemBuilder != null) {
      return MyoroHoverButton(
        configuration: configuration.copyWith(primaryColor: MyoroColorTheme.transparent),
        builder: _item.itemBuilder!,
        onPressed: _item.onPressed,
      );
    }

    return MyoroIconTextHoverButton(
      configuration: configuration,
      icon: _item.icon,
      iconSize: _iconSize,
      text: _item.text,
      textStyle: _textStyle,
      textAlign: _textAlign,
      onPressed: _item.onPressed,
    );
  }
}

final class _DialogText extends StatelessWidget {
  final String _text;

  const _DialogText(this._text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _text,
        style: context.resolveThemeExtension<MyoroMenuThemeExtension>().dialogTextStyle,
      ),
    );
  }
}
