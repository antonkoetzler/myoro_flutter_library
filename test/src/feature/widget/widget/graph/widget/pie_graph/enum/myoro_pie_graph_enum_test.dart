import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroPieGraphEnum.fake', () {
    expect(MyoroPieGraphEnum.values.contains(MyoroPieGraphEnum.fake()), isTrue);
  });

  test('MyoroPieGraphEnum getters', () {
    expect(MyoroPieGraphEnum.pie.isPie, isTrue);
    expect(MyoroPieGraphEnum.donut.isDonut, isTrue);
  });
}
