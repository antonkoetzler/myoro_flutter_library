import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroResizeDividerConfiguration.copyWith', () {
    final firstConfiguration = MyoroResizeDividerConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroResizeDividerConfiguration.fake();
    expect(
      firstConfiguration.copyWith(
        direction: secondConfiguration.direction,
        shortValue: secondConfiguration.shortValue,
        shortValueProvided: secondConfiguration.shortValue != null,
        padding: secondConfiguration.padding,
        paddingProvided: secondConfiguration.padding != null,
        dragCallback: secondConfiguration.dragCallback,
        dragCallbackProvided: secondConfiguration.dragCallback != null,
      ),
      secondConfiguration,
    );
  });
}
