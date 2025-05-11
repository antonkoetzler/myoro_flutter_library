import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroTableColumn.fake();

  test('MyoroTableColumn.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroTableColumn.fake();
    expect(
      model.copyWith(
        tooltipMessage: otherModel.tooltipMessage,
        tooltipMessageProvided: otherModel.tooltipMessage != null,
        widthConfiguration: otherModel.widthConfiguration,
        child: otherModel.child,
      ),
      otherModel,
    );
  });

  test('MyoroTableColumn.toString', () {
    expect(
      model.toString(),
      'MyoroTableColumn(\n'
      '  tooltipMessage: ${model.tooltipMessage}\n'
      '  widthConfiguration: ${model.widthConfiguration},\n'
      '  child: ${model.child},\n'
      ');',
    );
  });
}
