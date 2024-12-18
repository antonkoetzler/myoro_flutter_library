import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Returns a [List<T>] of the filtered items given the query.
typedef MyoroMenuSearchCallback<T> = List<T> Function(String query, List<T> items);

/// [MyoroMenuItem] builder from a generic object.
typedef MyoroMenuItemBuilder<T> = MyoroMenuItem Function(T item);

/// A menu widget that should not be used in production code, it is used
/// within [MyoroDropdown] & [MyoroInput] similar to the software dmenu.
final class MyoroMenu<T> extends StatelessWidget {
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

  /// Search callback that:
  /// 1. Places a searchbar at the top of the items;
  /// 2. Returns a [List<T>] of the filtered items given the query.
  final MyoroMenuSearchCallback<T>? searchCallback;

  /// Items in the menu.
  final MyoroDataConfiguration<T> dataConfiguration;

  /// Menu item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  const MyoroMenu({
    super.key,
    this.maxHeight,
    this.maxWidth,
    this.iconSize,
    this.textStyle,
    this.textAlign,
    this.searchCallback,
    required this.dataConfiguration,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();

    return Container(
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
          builder: (List<T>? items, MyoroRequestEnum status, _, __) {
            return switch (status) {
              MyoroRequestEnum.idle => const _Loader(),
              MyoroRequestEnum.loading => const _Loader(),
              MyoroRequestEnum.success => _Items(searchCallback, itemBuilder, items!, iconSize, textStyle, textAlign),
              MyoroRequestEnum.error => const _DialogText('Error getting items.'),
            };
          },
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

final class _Items<T> extends StatefulWidget {
  final MyoroMenuSearchCallback<T>? _searchCallback;
  final MyoroMenuItemBuilder<T> _itemBuilder;
  final List<T> _items;
  final double? _iconSize;
  final TextStyle? _textStyle;
  final TextAlign? _textAlign;

  const _Items(
    this._searchCallback,
    this._itemBuilder,
    this._items,
    this._iconSize,
    this._textStyle,
    this._textAlign,
  );

  @override
  State<_Items<T>> createState() => _ItemsState<T>();
}

class _ItemsState<T> extends State<_Items<T>> {
  MyoroMenuSearchCallback<T>? get _searchCallback => widget._searchCallback;
  MyoroMenuItemBuilder<T> get _itemBuilder => widget._itemBuilder;
  double? get _iconSize => widget._iconSize;
  TextStyle? get _textStyle => widget._textStyle;
  TextAlign? get _textAlign => widget._textAlign;

  late List<T> _items = widget._items;

  void _onSearch(String query) {
    if (query.isEmpty) {
      setState(() => _items = List.from(widget._items));
      return;
    }
    setState(() => _items = _searchCallback!.call(query, widget._items));
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = context.resolveThemeExtension<MyoroMenuThemeExtension>().borderRadius;

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: borderRadius.copyWith(
        topLeft: Radius.circular(borderRadius.topLeft.x - 4),
        topRight: Radius.circular(borderRadius.topLeft.x - 4),
        bottomLeft: Radius.circular(borderRadius.topLeft.x - 4),
        bottomRight: Radius.circular(borderRadius.topLeft.x - 4),
      ),
      child: Column(
        children: [
          if (_searchCallback != null) _SearchBar(_onSearch),
          if (_items.isNotEmpty) ...[
            Flexible(
              child: MyoroScrollable(
                scrollableType: MyoroScrollableEnum.singleChildScrollView,
                children: [
                  ..._items.map<Widget>(
                    (T item) => _Item(
                      _itemBuilder.call(item),
                      _iconSize,
                      _textStyle,
                      _textAlign,
                    ),
                  )
                ],
              ),
            ),
          ] else ...[
            const Flexible(
              child: _DialogText(
                'No items to display.',
              ),
            ),
          ],
        ],
      ),
    );
  }
}

final class _SearchBar<T> extends StatefulWidget {
  final void Function(String query) _onChanged;

  const _SearchBar(this._onChanged);

  @override
  State<_SearchBar<T>> createState() => _SearchBarState<T>();
}

class _SearchBarState<T> extends State<_SearchBar<T>> {
  void Function(String query) get _onChanged => widget._onChanged;

  final _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();

    return Padding(
      padding: themeExtension.searchBarPadding,
      child: MyoroInput(
        configuration: MyoroInputConfiguration(
          focusNode: _focusNode..requestFocus(),
          inputStyle: themeExtension.searchBarInputStyle,
          onChanged: _onChanged,
        ),
      ),
    );
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
        configuration: configuration.copyWith(),
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
