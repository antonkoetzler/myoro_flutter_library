import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroFontSizeEnum].
void main() {
  test('MyoroFontSizeEnum.size', () {
    expect(MyoroFontSizeEnum.tiny.size, 12);
    expect(MyoroFontSizeEnum.small.size, 16);
    expect(MyoroFontSizeEnum.medium.size, 18);
    expect(MyoroFontSizeEnum.large.size, 20);
  });

  test('MyoroFontSizeEnum getters', () {
    expect(MyoroFontSizeEnum.tiny.isTiny, isTrue);
    expect(MyoroFontSizeEnum.small.isSmall, isTrue);
    expect(MyoroFontSizeEnum.medium.isMedium, isTrue);
    expect(MyoroFontSizeEnum.large.isLarge, isTrue);
  });

  test('MyoroFontSizeEnum.fake', () {
    expect(
      MyoroFontSizeEnum.values.contains(MyoroFontSizeEnum.fake()),
      isTrue,
    );
  });
}
