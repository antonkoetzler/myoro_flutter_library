import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_input_menu_configuration.g.dart';

/// Configuration of the menu of the [MyoroSearchInput].
@immutable
@myoroModel
class MyoroSearchInputMenuConfiguration<T> {
  const MyoroSearchInputMenuConfiguration({required this.request, this.onEndReachedRequest, required this.itemBuilder});

  /// Request to be executed when the search input is triggered.
  final MyoroSearchInputRequest<T> request;

  /// Request that executes when the bottom of the menu is reached.
  final MyoroSearchInputOnEndReachedRequest<T>? onEndReachedRequest;

  /// Menu item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;
}
