part of '../myoro_search_input_widget_showcase.dart';

/// View model of [MyoroSearchInputWidgetShowcase].
final class MyoroSearchInputWidgetShowcaseViewModel {
  /// State
  final state = MyoroSearchInputWidgetShowcaseState();

  /// View model of [MyoroInputWidgetShowcase].
  final inputViewModel = MyoroInputWidgetShowcaseViewModel();

  /// Configuration of the [MyoroSearchInput] given the options set.
  MyoroSearchInputConfiguration<String> configuration(BuildContext context) {
    return MyoroSearchInputConfiguration(
      inputConfiguration: inputViewModel.configuration(context),
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
