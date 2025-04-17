import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/blocs/myoro_menu_bloc/myoro_menu_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final Set<String> items = List.generate(faker.randomGenerator.integer(100), (int index) => '#$index: ${faker.lorem.word()}').toSet();
  final configuration = MyoroMenuConfiguration(
    request: () => items,
    itemBuilder: (String item) => MyoroMenuItem.fake().copyWith(text: item),
    searchCallback:
        (String query, Set<String> items) =>
            items.where((String item) {
              return item.toUpperCase().contains(query.toUpperCase());
            }).toSet(),
  );
  final String query = faker.lorem.word();

  blocTest(
    'MyoroMenuBloc.FetchEvent',
    build: () => MyoroMenuBloc(configuration),
    act: (MyoroMenuBloc<String> bloc) {
      bloc
        ..add(const FetchEvent())
        ..add(const FetchEvent());
    },
    expect: () {
      return [
        const MyoroMenuState<String>(status: MyoroRequestEnum.loading),
        MyoroMenuState<String>(status: MyoroRequestEnum.success, items: items, initialRequestMade: true),
        MyoroMenuState<String>(status: MyoroRequestEnum.loading, items: items, initialRequestMade: true),
        MyoroMenuState<String>(status: MyoroRequestEnum.success, items: items, initialRequestMade: true),
      ];
    },
  );

  blocTest(
    'MyoroMenuBloc.SearchEvent',
    build: () => MyoroMenuBloc(configuration),
    act: (MyoroMenuBloc<String> bloc) {
      bloc
        ..add(const FetchEvent())
        ..add(SearchEvent(query));
    },
    expect: () {
      return [
        const MyoroMenuState<String>(status: MyoroRequestEnum.loading),
        MyoroMenuState<String>(status: MyoroRequestEnum.success, items: items, initialRequestMade: true),
        MyoroMenuState<String>(
          status: MyoroRequestEnum.success,
          items: items,
          initialRequestMade: true,
          queriedItems: query.isEmpty ? items : configuration.searchCallback!(query, items),
        ),
      ];
    },
  );
}
