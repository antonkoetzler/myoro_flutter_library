import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:storyboard/app/blocs/myoro_modal_widget_showcase_bloc/myoro_modal_widget_showcase_bloc.dart';

/// Unit test of [MyoroModalWidgetShowcaseBloc].
void main() {
  final bool barrierDismissable = faker.randomGenerator.boolean();
  final double? minWidth = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  final double? maxWidth = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  final double? minHeight = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  final double? maxHeight = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  final String? title = faker.randomGenerator.boolean() ? faker.lorem.word() : null;
  final bool showCloseButton = faker.randomGenerator.boolean();

  blocTest(
    'MyoroModalWidgetShowcaseBloc.SetBarrierDismissableEvent',
    build: () => MyoroModalWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetBarrierDismissableEvent(barrierDismissable)),
    expect: () => [MyoroModalWidgetShowcaseState(barrierDismissable: barrierDismissable)],
  );

  blocTest(
    'MyoroModalWidgetShowcaseBloc.SetMinWidthEvent',
    build: () => MyoroModalWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetMinWidthEvent(minWidth)),
    expect: () => [MyoroModalWidgetShowcaseState(minWidth: minWidth)],
  );

  blocTest(
    'MyoroModalWidgetShowcaseBloc.SetMaxWidthEvent',
    build: () => MyoroModalWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetMaxWidthEvent(maxWidth)),
    expect: () => [MyoroModalWidgetShowcaseState(maxWidth: maxWidth)],
  );

  blocTest(
    'MyoroModalWidgetShowcaseBloc.SetMinHeightEvent',
    build: () => MyoroModalWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetMinHeightEvent(minHeight)),
    expect: () => [MyoroModalWidgetShowcaseState(minHeight: minHeight)],
  );

  blocTest(
    'MyoroModalWidgetShowcaseBloc.SetMaxHeightEvent',
    build: () => MyoroModalWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetMaxHeightEvent(maxHeight)),
    expect: () => [MyoroModalWidgetShowcaseState(maxHeight: maxHeight)],
  );

  blocTest(
    'MyoroModalWidgetShowcaseBloc.SetTitleEvent',
    build: () => MyoroModalWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTitleEvent(title)),
    expect: () => [MyoroModalWidgetShowcaseState(title: title)],
  );

  blocTest(
    'MyoroModalWidgetShowcaseBloc.SetShowCloseButtonEvent',
    build: () => MyoroModalWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetShowCloseButtonEvent(showCloseButton)),
    expect: () => [MyoroModalWidgetShowcaseState(showCloseButton: showCloseButton)],
  );
}
