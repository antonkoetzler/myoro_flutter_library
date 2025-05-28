import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroTapStatusEnum getters', () {
    expect(MyoroTapStatusEnum.idle.isIdle, isTrue);
    expect(MyoroTapStatusEnum.hover.isHover, isTrue);
    expect(MyoroTapStatusEnum.tap.isTap, isTrue);
  });
}
