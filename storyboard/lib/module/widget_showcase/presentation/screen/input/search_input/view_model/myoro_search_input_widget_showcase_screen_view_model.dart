import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroSearchInputWidgetShowcaseScreen].
final class MyoroSearchInputWidgetShowcaseScreenViewModel {
  /// State
  final state = MyoroSearchInputWidgetShowcaseScreenState();

  /// View model of [MyoroInputWidgetShowcaseScreen].
  final inputViewModel = MyoroInputWidgetShowcaseScreenViewModel();

  /// Configuration of the [MyoroSearchInput] given the options set.
  /// Note: Using only search-specific fields to avoid relying on base input getters.
  MyoroSearchInputConfiguration<String> buildConfiguration(BuildContext context, Widget suffix) {
    return MyoroSearchInputConfiguration(requestWhenChanged: state.requestWhenChanged, request: _request, itemBuilder: _itemBuilder);
  }

  /// [MyoroSearchInputConfiguration.request]
  Future<Set<String>> _request(String query) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    return state.items.where((item) => item.toUpperCase().contains(query.toUpperCase())).toSet();
  }

  /// [MyoroSearchInputConfiguration.itemBuilder]
  MyoroMenuItem _itemBuilder(String item) {
    return MyoroMenuItem(iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(textConfiguration: MyoroTextConfiguration(text: item)));
  }
}
