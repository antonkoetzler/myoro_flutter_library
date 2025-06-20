import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroMenuWidgetShowcaseScreen].
final class MyoroMenuWidgetShowcaseScreenViewModel {
  /// State
  final state = MyoroMenuWidgetShowcaseScreenState();

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Configuration given [state].
  MyoroMenuConfiguration<String> configuration(BuildContext context) {
    return MyoroMenuConfiguration(
      constraints: state.constraints,
      backgroundColor: state.backgroundColor,
      border: state.borderEnabled ? MyoroButtonStyleEnum.border(context) : null,
      borderRadius: state.borderRadius,
      request: _request,
      onEndReachedRequest: state.onEndReachedRequestEnabled ? _onEndReachedRequest : null,
      searchCallback: state.searchCallbackEnabled ? _searchCallback : null,
      itemBuilder: itemBuilder,
    );
  }

  /// [MyoroMenuConfiguration.request]
  Future<Set<String>> _request() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {for (int i = 0; i < 50; i++) 'Item #${i + 1}'};
  }

  /// [MyoroMenuConfiguration.onEndReachedRequest]
  Future<Set<String>> _onEndReachedRequest(Set<String> items) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return {...items, for (int i = items.length; i < items.length + 50; i++) 'Item #${i + 1}'};
  }

  /// [MyoroMenuConfiguration.searchCallback]
  Set<String> _searchCallback(String query, Set<String> items) {
    return items.where((item) => item.contains(query)).toSet();
  }

  /// [MyoroMenuConfiguration.itemBuilder]
  MyoroMenuItem itemBuilder(String item) {
    return MyoroMenuItem(textConfiguration: MyoroIconTextButtonTextConfiguration(text: item));
  }
}
