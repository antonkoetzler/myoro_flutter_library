import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final MyoroTableConfiguration model = _configuration;

  test('MyoroTableConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final MyoroTableConfiguration otherModel = _configuration;
    expect(
      model.copyWith(
        request: otherModel.request,
        columns: otherModel.columns,
        rowBuilder: otherModel.rowBuilder,
      ),
      otherModel,
    );
  });

  test('MyoroTableConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroTableConfiguration<dynamic>(\n'
      '  request: ${model.request},\n'
      '  columns: ${model.columns},\n'
      '  rowBuilder: ${model.rowBuilder},\n'
      ');',
    );
  });
}

MyoroTableConfiguration get _configuration {
  return MyoroTableConfiguration(
    request: () => {},
    columns: [MyoroTableColumn.fake()],
    rowBuilder: (_) => MyoroTableRow.fake(),
  );
}
