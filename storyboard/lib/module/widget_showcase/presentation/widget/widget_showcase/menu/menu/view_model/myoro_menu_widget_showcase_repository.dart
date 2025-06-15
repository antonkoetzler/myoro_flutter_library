part of 'myoro_menu_widget_showcase_view_model.dart';

/// Repository layer of [MyoroMenuWidgetShowcaseViewModel].
final class MyoroMenuWidgetShowcaseRepository {
  /// Dispose function.
  void dispose(MyoroMenuWidgetShowcaseState state) {
    state.dispose();
  }

  /// [MyoroMenuConfiguration.request]
  Future<Set<String>> request() async {
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

  /// Configuration given [state].
  MyoroMenuConfiguration<String> buildConfiguration(MyoroMenuWidgetShowcaseState state) {
    return MyoroMenuConfiguration(
      constraints: state.constraints,
      request: request,
      onEndReachedRequest: state.onEndReachedRequestEnabled ? _onEndReachedRequest : null,
      searchCallback: state.searchCallbackEnabled ? _searchCallback : null,
      itemBuilder: itemBuilder,
    );
  }
}
