import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroFontSizeEnum.fake()', () {
    expect(MyoroFontSizeEnum.values.contains(MyoroFontSizeEnum.fake()), isTrue);
  });

  test('MyoroFontSizeEnum.size', () {
    expect(MyoroFontSizeEnum.tiny.size, 12);
    expect(MyoroFontSizeEnum.small.size, 16);
    expect(MyoroFontSizeEnum.medium.size, 20);
    expect(MyoroFontSizeEnum.large.size, 24);
    expect(MyoroFontSizeEnum.extraLarge.size, 28);
  });

  test('MyoroFontSizeEnum getters', () {
    expect(MyoroFontSizeEnum.tiny.isTiny, isTrue);
    expect(MyoroFontSizeEnum.small.isSmall, isTrue);
    expect(MyoroFontSizeEnum.medium.isMedium, isTrue);
    expect(MyoroFontSizeEnum.large.isLarge, isTrue);
    expect(MyoroFontSizeEnum.extraLarge.isExtraLarge, isTrue);
  });
}
