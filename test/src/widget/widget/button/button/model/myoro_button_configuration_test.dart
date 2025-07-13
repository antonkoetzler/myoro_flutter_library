import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroButtonConfiguration.onTapProvided', () {
    MyoroButtonConfiguration.fake().borderBuilder?.call(MyoroTapStatusEnum.fake());
    expect(MyoroButtonConfiguration.fake().copyWith(onTapUp: (_) {}, onTapDown: (_) {}).onTapProvided, isTrue);
    expect(MyoroButtonConfiguration.fake().copyWith(onTapUp: (_) {}, onTapDownProvided: false).onTapProvided, isTrue);
    expect(MyoroButtonConfiguration.fake().copyWith(onTapUpProvided: false, onTapDown: (_) {}).onTapProvided, isTrue);
    expect(
      MyoroButtonConfiguration.fake().copyWith(onTapUpProvided: false, onTapDownProvided: false).onTapProvided,
      isFalse,
    );
  });
}
