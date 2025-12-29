import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroRequestWidgetShowcaseScreen].
final class MyoroRequestWidgetShowcaseScreenViewModel {
  /// [MyoroRequestWidget.request] of [_Widget].
  Future<String> request() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'Sample data loaded successfully!';
  }

  /// [MyoroRequestWidget.onSuccess] of [_Widget].
  void onSuccess(String? data) {
    // Handle success if needed
  }

  /// [MyoroRequestWidget.onError] of [_Widget].
  void onError(Object? errorMessage) {
    // Handle error if needed
  }
}
