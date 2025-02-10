import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroPieGraphEnum].
void main() {
  test('MyoroPieGraphEnum.name', () {
    expect(MyoroPieGraphEnum.pie.name, 'Pie');
    expect(MyoroPieGraphEnum.donut.name, 'Donut');
  });

  test('MyoroPieGraphEnum getters', () {
    expect(MyoroPieGraphEnum.pie.isPie, isTrue);
    expect(MyoroPieGraphEnum.donut.isDonut, isTrue);
  });

  test('MyoroPieGraphEnum.fake', () {
    expect(
      MyoroPieGraphEnum.values.contains(MyoroPieGraphEnum.fake()),
      isTrue,
    );
  });
}
