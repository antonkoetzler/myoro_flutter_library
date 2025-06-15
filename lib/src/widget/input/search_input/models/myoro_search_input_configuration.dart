import 'dart:async';

import 'package:faker/faker.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_input_configuration.g.dart';

/// Configuration of [MyoroSearchInput].
@myoroModel
class MyoroSearchInputConfiguration<T> with _$MyoroSearchInputConfigurationMixin {
  static const requestWhenChangedDefaultValue = false;

  /// [MyoroInput] configuration.
  final MyoroInputConfiguration inputConfiguration;

  /// If [request] will be ran everytime the input's text changes rather than when the input is submitted.
  final bool requestWhenChanged;

  /// Search request.
  final MyoroSearchInputRequest<T> request;

  /// [MyoroMenuItem] builder to display the items in [_SearchSection].
  final MyoroMenuItemBuilder<T> itemBuilder;

  const MyoroSearchInputConfiguration({
    required this.inputConfiguration,
    this.requestWhenChanged = requestWhenChangedDefaultValue,
    required this.request,
    required this.itemBuilder,
  });

  MyoroSearchInputConfiguration.fake()
    : inputConfiguration = MyoroInputConfiguration.fake(),
      requestWhenChanged = faker.randomGenerator.boolean(),
      request = ((_) => {}),
      itemBuilder = ((_) => MyoroMenuItem.fake());
}
