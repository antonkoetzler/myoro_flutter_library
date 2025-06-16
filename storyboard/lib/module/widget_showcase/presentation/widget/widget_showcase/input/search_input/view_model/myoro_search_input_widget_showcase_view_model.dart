import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroSearchInputWidgetShowcase].
final class MyoroSearchInputWidgetShowcaseViewModel {
  /// State
  final state = MyoroSearchInputWidgetShowcaseState();

  /// View model of [MyoroInputWidgetShowcase].
  final inputViewModel = MyoroInputWidgetShowcaseViewModel();

  /// Configuration of the [MyoroSearchInput] given the options set.
  MyoroSearchInputConfiguration<String> configuration(BuildContext context, Widget suffix) {
    return MyoroSearchInputConfiguration(
      inputConfiguration: inputViewModel.configuration(context, suffix),
      requestWhenChanged: state.requestWhenChanged,
      request: _request,
      itemBuilder: _itemBuilder,
    );
  }

  /// [MyoroSearchInputConfiguration.request]
  Set<String> _request(String query) {
    return state.items.where((item) => item.toUpperCase().contains(query.toUpperCase())).toSet();
  }

  /// [MyoroSearchInputConfiguration.itemBuilder]
  MyoroMenuItem _itemBuilder(String item) {
    return MyoroMenuItem(textConfiguration: MyoroIconTextButtonTextConfiguration(text: item));
  }
}
