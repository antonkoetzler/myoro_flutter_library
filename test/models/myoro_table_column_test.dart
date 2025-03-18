import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroTableColumn].
void main() {
  final model = MyoroTableColumn.fake();

  test('MyoroTableColumn.copyWith', () {
    final newModel = MyoroTableColumn.fake();
    expect(
      model.copyWith(
        title: newModel.title,
        titleTextStyle: newModel.titleTextStyle,
        widthConfiguration: newModel.widthConfiguration,
        ordenationCallback: newModel.ordenationCallback,
      ),
      newModel,
    );
  });

  test('MyoroTableColumn.toString', () {
    expect(
      model.toString(),
      'MyoroTableColumn(\n'
      '  title: ${model.title},\n'
      '  titleTextStyle: ${model.titleTextStyle},\n'
      '  widthConfiguration: ${model.widthConfiguration},\n'
      '  ordenationCallback: ${model.ordenationCallback},\n'
      ');',
    );
  });
}
