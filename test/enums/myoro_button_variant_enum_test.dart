import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroButtonVariantEnum getters', () {
    expect(MyoroButtonVariantEnum.primary.isPrimary, isTrue);
    expect(MyoroButtonVariantEnum.secondary.isSecondary, isTrue);
  });
}
