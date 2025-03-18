import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroInputWidgetShowcaseEnum].
void main() {
  test('MyoroInputWidgetShowcaseEnum value members', () {
    expect(MyoroInputWidgetShowcaseEnum.none.title, 'No formatter');
    expect(MyoroInputWidgetShowcaseEnum.date.title, 'Dates');
    expect(MyoroInputWidgetShowcaseEnum.number.title, 'Numbers');
  });

  test('MyoroInputWidgetShowcaseEnum getters', () {
    expect(MyoroInputWidgetShowcaseEnum.none.isNone, isTrue);
    expect(MyoroInputWidgetShowcaseEnum.date.isDate, isTrue);
    expect(MyoroInputWidgetShowcaseEnum.number.isNumber, isTrue);
  });

  test('MyoroInputWidgetShowcaseEnum.fake', () {
    expect(
        MyoroInputWidgetShowcaseEnum.values
            .contains(MyoroInputWidgetShowcaseEnum.fake()),
        isTrue);
  });
}
