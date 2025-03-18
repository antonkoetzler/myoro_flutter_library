import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:storyboard/app/blocs/myoro_table_widget_showcase_bloc/myoro_table_widget_showcase_bloc.dart';

/// Unit test of [MyoroTableWidgetShowcaseBloc].
void main() {
  final bool enableColumnResizing = faker.randomGenerator.boolean();
  final bool enableCheckboxes = faker.randomGenerator.boolean();
  final bool showPaginationControls = faker.randomGenerator.boolean();

  blocTest(
    'MyoroTableWidgetShowcaseBloc.SetEnableColumnResizingEvent',
    build: () => MyoroTableWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetEnableColumnResizingEvent(enableColumnResizing)),
    expect:
        () => [
          MyoroTableWidgetShowcaseState(
            enableColumnResizing: enableColumnResizing,
          ),
        ],
  );

  blocTest(
    'MyoroTableWidgetShowcaseBloc.SetEnableCheckboxesEvent',
    build: () => MyoroTableWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetEnableCheckboxesEvent(enableCheckboxes)),
    expect:
        () => [
          MyoroTableWidgetShowcaseState(enableCheckboxes: enableCheckboxes),
        ],
  );

  blocTest(
    'MyoroTableWidgetShowcaseBloc.SetShowPaginationControlsEvent',
    build: () => MyoroTableWidgetShowcaseBloc(),
    act:
        (bloc) =>
            bloc.add(SetShowPaginationControlsEvent(showPaginationControls)),
    expect:
        () => [
          MyoroTableWidgetShowcaseState(
            showPaginationControls: showPaginationControls,
          ),
        ],
  );
}
