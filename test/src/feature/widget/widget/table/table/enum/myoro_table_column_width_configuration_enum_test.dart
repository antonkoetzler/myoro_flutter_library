import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroTableColumnWidthConfigurationEnum.fake', () {
    expect(
      MyoroTableColumnWidthConfigurationEnum.values.contains(MyoroTableColumnWidthConfigurationEnum.fake()),
      isTrue,
    );
  });

  test('MyoroTableColumnWidthConfigurationEnum getters', () {
    expect(MyoroTableColumnWidthConfigurationEnum.expanded.isExpanded, isTrue);
    expect(MyoroTableColumnWidthConfigurationEnum.intrinsic.isIntrinsic, isTrue);
    expect(MyoroTableColumnWidthConfigurationEnum.fixed.isFixed, isTrue);
  });
}
