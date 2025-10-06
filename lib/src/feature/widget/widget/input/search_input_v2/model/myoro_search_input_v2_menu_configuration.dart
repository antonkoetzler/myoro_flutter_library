import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_input_v2_menu_configuration.g.dart';

/// Configuration of the menu of the [MyoroSearchInputV2].
@immutable
@myoroModel
class MyoroSearchInputV2MenuConfiguration<T> {
  const MyoroSearchInputV2MenuConfiguration({
    required this.request,
    this.onEndReachedRequest,
    required this.itemBuilder,
  });

  /// Request to be executed when the search input is triggered.
  final MyoroSearchInputV2Request<T> request;

  /// Request that executes when the bottom of the menu is reached.
  final MyoroSearchInputV2OnEndReachedRequest<T>? onEndReachedRequest;

  /// Menu item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;
}
