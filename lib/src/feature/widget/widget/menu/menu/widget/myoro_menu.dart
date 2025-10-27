import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_base.dart';
part '../_widget/_dialog_text.dart';
part '../_widget/_item.dart';
part '../_widget/_items_section.dart';
part '../_widget/_loader.dart';
part '../_widget/_search_bar.dart';
part '../_widget/_success_content.dart';

/// Menu [Widget].
final class MyoroMenu<T> extends StatelessWidget {
  /// Default constructor.
  const MyoroMenu({
    super.key,
    this.style = const MyoroMenuStyle(),
    required this.request,
    this.selectedItems = const {},
    this.onEndReachedRequest,
    this.searchCallback,
    required this.itemBuilder,
    this.onChanged,
  });

  /// Style.
  final MyoroMenuStyle style;

  /// Request that returns the [MyoroPagination] of the [MyoroMenu].
  final MyoroMenuRequest<T> request;

  /// Selected items.
  final Set<T> selectedItems;

  /// Request that executes when the bottom of the menu is reached.
  final MyoroMenuOnEndReachedRequest<T>? onEndReachedRequest;

  /// Search callback that:
  /// 1. Places a searchbar at the top of the items;
  /// 2. Returns a [List<T>] of the filtered items given the query.
  final MyoroMenuSearchCallback<T>? searchCallback;

  /// Menu item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// Callback executed when the selected items are changed.
  final MyoroMenuOnChanged<T>? onChanged;

  /// Build function.
  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: style),
        InheritedProvider(
          create: (_) => MyoroMenuViewModel(request, selectedItems, onEndReachedRequest, searchCallback, itemBuilder),
          dispose: (_, v) => v.dispose(),
        ),
      ],
      child: const _Base(),
    );
  }
}
