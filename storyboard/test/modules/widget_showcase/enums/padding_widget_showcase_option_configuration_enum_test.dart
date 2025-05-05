import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  test('PaddingWidgetShowcaseOptionConfigurationEnum getters', () {
    expect(PaddingWidgetShowcaseOptionConfigurationEnum.all.isAll, isTrue);
    expect(PaddingWidgetShowcaseOptionConfigurationEnum.symmetric.isSymmetric, isTrue);
  });
}
