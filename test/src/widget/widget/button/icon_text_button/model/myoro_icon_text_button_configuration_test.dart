import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroIconTextButtonConfiguration.fake', () {
    MyoroIconTextButtonConfiguration.fake();
    MyoroIconTextButtonConfiguration.fake(borderRadiusProvided: true).borderRadius;
    MyoroIconTextButtonConfiguration.fake(borderBuilderProvided: true).borderBuilder!(MyoroTapStatusEnum.fake());
  });
}
