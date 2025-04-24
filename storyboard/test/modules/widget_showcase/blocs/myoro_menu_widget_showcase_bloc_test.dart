import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:storyboard/app/blocs/myoro_menu_widget_showcase_bloc/myoro_menu_widget_showcase_bloc.dart';

/// Unit test of [MyoroMenuWidgetShowcaseBloc].
void main() {
  final double minWidth = faker.randomGenerator.decimal();
  final double maxWidth = faker.randomGenerator.decimal();
  final double minHeight = faker.randomGenerator.decimal();
  final double maxHeight = faker.randomGenerator.decimal();

  blocTest(
    'MyoroMenuWidgetShowcaseBloc.SetMinWidthEvent',
    build: () => MyoroMenuWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetMinWidthEvent(minWidth)),
    expect: () => [MyoroMenuWidgetShowcaseState(minWidth: minWidth)],
  );

  blocTest(
    'MyoroMenuWidgetShowcaseBloc.SetMaxWidthEvent',
    build: () => MyoroMenuWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetMaxWidthEvent(maxWidth)),
    expect: () => [MyoroMenuWidgetShowcaseState(maxWidth: maxWidth)],
  );

  blocTest(
    'MyoroMenuWidgetShowcaseBloc.SetMinHeightEvent',
    build: () => MyoroMenuWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetMinHeightEvent(minHeight)),
    expect: () => [MyoroMenuWidgetShowcaseState(minHeight: minHeight)],
  );

  blocTest(
    'MyoroMenuWidgetShowcaseBloc.SetMaxHeightEvent',
    build: () => MyoroMenuWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetMaxHeightEvent(maxHeight)),
    expect: () => [MyoroMenuWidgetShowcaseState(maxHeight: maxHeight)],
  );
}
