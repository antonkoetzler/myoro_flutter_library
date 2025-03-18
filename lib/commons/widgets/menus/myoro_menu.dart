import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Returns a [List<T>] of the filtered items given the query.
typedef MyoroMenuSearchCallback<T> = List<T> Function(
    String query, List<T> items);

/// [MyoroMenuItem] builder from a generic object.
typedef MyoroMenuItemBuilder<T> = MyoroMenuItem Function(T item);

/// A menu widget that should not be used in production code, it is used
/// within [_MyoroDropdown] & [MyoroInput] similar to the software dmenu.
final class MyoroMenu<T> extends StatelessWidget {
  /// Constraints of the menu.
  final BoxConstraints? constraints;

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
    this.constraints,
    this.searchCallback,
    required this.dataConfiguration,
    required this.itemBuilder,
  });

  static Finder finder<T>({
    BoxConstraints? constraints,
    bool constraintsEnabled = false,
    MyoroMenuSearchCallback<T>? searchCallback,
    bool searchCallbackEnabled = false,
    MyoroDataConfiguration<T>? dataConfiguration,
    bool dataConfigurationEnabled = false,
    MyoroMenuItemBuilder<T>? itemBuilder,
    bool itemBuilderEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroMenu<T> &&
          (constraintsEnabled ? w.constraints == constraints : true) &&
          (searchCallbackEnabled ? w.searchCallback == searchCallback : true) &&
          (dataConfigurationEnabled
              ? w.dataConfiguration == dataConfiguration
              : true) &&
          (itemBuilderEnabled ? w.itemBuilder == itemBuilder : true),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroMenuThemeExtension>();

    return Container(
      decoration: BoxDecoration(
        color: themeExtension.primaryColor,
        border: themeExtension.border,
        borderRadius: themeExtension.borderRadius,
      ),
      child: ConstrainedBox(
        constraints: constraints ?? const BoxConstraints(),
        child: MyoroResolver(
          request: () async => await dataConfiguration.items,
          builder: (List<T>? items, MyoroRequestEnum status, _, __) {
            return switch (status) {
              MyoroRequestEnum.idle => const _Loader(),
              MyoroRequestEnum.loading => const _Loader(),
              MyoroRequestEnum.success =>
                _Items(searchCallback, itemBuilder, items!),
              MyoroRequestEnum.error =>
                const _DialogText('Error getting items.'),
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
  Widget build(BuildContext context) =>
      const Center(child: MyoroCircularLoader());
}

final class _Items<T> extends StatefulWidget {
  final MyoroMenuSearchCallback<T>? _searchCallback;
  final MyoroMenuItemBuilder<T> _itemBuilder;
  final List<T> _items;

  const _Items(
    this._searchCallback,
    this._itemBuilder,
    this._items,
  );

  @override
  State<_Items<T>> createState() => _ItemsState<T>();
}

final class _ItemsState<T> extends State<_Items<T>> {
  MyoroMenuSearchCallback<T>? get _searchCallback => widget._searchCallback;
  MyoroMenuItemBuilder<T> get _itemBuilder => widget._itemBuilder;
  List<Widget> get _itemWidgets =>
      _items.map<Widget>((T item) => _Item(_itemBuilder.call(item))).toList();

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
    final borderRadius =
        context.resolveThemeExtension<MyoroMenuThemeExtension>().borderRadius;

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: borderRadius.copyWith(
        topLeft: Radius.circular(borderRadius.topLeft.x - 4),
        topRight: Radius.circular(borderRadius.topLeft.x - 4),
        bottomLeft: Radius.circular(borderRadius.topLeft.x - 4),
        bottomRight: Radius.circular(borderRadius.topLeft.x - 4),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_searchCallback != null) _SearchBar(_onSearch),
          if (_items.isNotEmpty) ...[
            Flexible(
                child: SingleChildScrollView(
                    child: Column(children: _itemWidgets)))
          ] else ...[
            const Flexible(child: _DialogText('No items to display.'))
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

final class _SearchBarState<T> extends State<_SearchBar<T>> {
  void Function(String query) get _onChanged => widget._onChanged;

  final _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroMenuThemeExtension>();

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

  const _Item(this._item);

  @override
  Widget build(BuildContext context) {
    final configuration = MyoroHoverButtonConfiguration(
      borderRadius: context
          .resolveThemeExtension<MyoroMenuThemeExtension>()
          .itemBorderRadius,
      isHovered: _item.isHovered,
    );

    if (_item.itemBuilder != null) {
      return MyoroHoverButton(
        configuration: configuration,
        builder: _item.itemBuilder!,
        onPressed: _item.onPressed,
      );
    }

    return MyoroIconTextHoverButton(
      configuration: configuration,
      icon: _item.icon,
      iconSize: _item.iconSize,
      text: _item.text ?? '',
      textStyle: _item.textStyle,
      textAlign: _item.textAlign,
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
        style: context
            .resolveThemeExtension<MyoroMenuThemeExtension>()
            .dialogTextStyle,
      ),
    );
  }
}
