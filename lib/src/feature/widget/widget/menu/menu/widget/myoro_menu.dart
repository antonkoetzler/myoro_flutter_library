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
    this.searchCallback,
    this.items,
    this.selectedItems = const {},
    required this.itemBuilder,
  });

  /// Style.
  final MyoroMenuStyle style;

  /// Whether or not to show the search bar.
  final MyoroMenuSearchCallback<T>? searchCallback;

  /// Items being displayed.
  ///
  /// If [items] is null, this is a loading state.
  final Set<T>? items;

  /// Selected items.
  final Set<T> selectedItems;

  /// Menu item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// Build function.
  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: style),
        InheritedProvider(
          create: (_) => MyoroMenuViewModel<T>(searchCallback, items, selectedItems, itemBuilder),
          dispose: (_, v) => v.dispose(),
        ),
      ],
      child: const _Base(),
    );
  }
}
