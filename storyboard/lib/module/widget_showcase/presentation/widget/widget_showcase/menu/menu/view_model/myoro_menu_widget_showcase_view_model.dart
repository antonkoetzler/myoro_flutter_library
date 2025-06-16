import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroMenuWidgetShowcase].
final class MyoroMenuWidgetShowcaseViewModel {
  /// State
  final _state = MyoroMenuWidgetShowcaseState();
  MyoroMenuWidgetShowcaseState get state => _state;

  /// Dispose function.
  void dispose() {
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
  MyoroMenuConfiguration<String> get configuration {
    return MyoroMenuConfiguration(
      constraints: state.constraints,
      request: request,
      onEndReachedRequest: state.onEndReachedRequestEnabled ? _onEndReachedRequest : null,
      searchCallback: state.searchCallbackEnabled ? _searchCallback : null,
      itemBuilder: itemBuilder,
    );
  }
}
