import 'package:bloc_test/bloc_test.dart';
import 'package:myoro_flutter_library/blocs/myoro_table_bloc/myoro_table_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  blocTest(
    'MyoroTableBloc.FetchEvent',
    build: _createBloc,
    act: (bloc) {
      bloc.add(const FetchEvent());
    },
    expect: () {
      return const [
        MyoroTableState<String>(status: MyoroRequestEnum.loading),
        MyoroTableState<String>(status: MyoroRequestEnum.success, items: {}),
      ];
    },
  );
}

MyoroTableBloc<String> _createBloc() {
  final bloc = MyoroTableBloc<String>();
  bloc.configuration = MyoroTableConfiguration(
    request: () => {},
    columns: [MyoroTableColumn.fake()],
    rowBuilder: (_) => MyoroTableRow.fake(),
  );
  return bloc;
}
