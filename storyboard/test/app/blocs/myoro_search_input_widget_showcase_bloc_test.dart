import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:storyboard/app/blocs/myoro_search_input_widget_showcase_bloc/myoro_search_input_widget_showcase_bloc.dart';

/// Unit test of [MyoroSearchInputWidgetShowcaseBloc].
void main() {
  final bool requestWhenChanged = faker.randomGenerator.boolean();

  blocTest(
    'MyoroSearchInputWidgetShowcaseBloc.SetRequestWhenChangedEvent',
    build: () => MyoroSearchInputWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetRequestWhenChangedEvent(requestWhenChanged)),
    expect: () => [
      MyoroSearchInputWidgetShowcaseState(
        requestWhenChanged: requestWhenChanged,
      ),
    ],
  );
}
