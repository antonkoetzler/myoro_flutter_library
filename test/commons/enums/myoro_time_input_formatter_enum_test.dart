import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test for [MyoroTimeInputFormatterEnum].
void main() {
  test('MyoroTimeInputFormatterEnum members', () {
    expect(MyoroTimeInputFormatterEnum.mmSs.inputMask, '##:##');
    expect(MyoroTimeInputFormatterEnum.hhMmSs.inputMask, '##:##:##');
    expect(MyoroTimeInputFormatterEnum.mmSs.emptyValue, '00:00');
    expect(MyoroTimeInputFormatterEnum.hhMmSs.emptyValue, '00:00:00');
  });

  test('MyoroTimeInputFormatterEnum getters', () {
    expect(MyoroTimeInputFormatterEnum.mmSs.isMmSs, isTrue);
    expect(MyoroTimeInputFormatterEnum.hhMmSs.isHhMmSs, isTrue);
  });

  test('MyoroTimeInputFormatterEnum.fake', () {
    expect(MyoroTimeInputFormatterEnum.values.contains(MyoroTimeInputFormatterEnum.fake()), isTrue);
  });
}
