import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroTableColumnWidthEnum].
void main() {
  test('MyoroTableColumnWidthEnum getters', () {
    expect(MyoroTableColumnWidthEnum.fixed.isFixed, isTrue);
    expect(MyoroTableColumnWidthEnum.flexible.isFlexible, isTrue);
    expect(MyoroTableColumnWidthEnum.expanded.isExpanded, isTrue);
  });

  test('MyoroTableColumnWidthEnum.fake', () {
    expect(
      MyoroTableColumnWidthEnum.values.contains(
        MyoroTableColumnWidthEnum.fake(),
      ),
      isTrue,
    );
  });
}
