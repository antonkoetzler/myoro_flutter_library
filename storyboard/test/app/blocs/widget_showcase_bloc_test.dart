import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [WidgetShowcaseBloc].
void main() {
  final bool displayingWidgetShowcase = faker.randomGenerator.boolean();

  blocTest(
    'WidgetShowcaseBloc.ToggleWidgetShowcaseDisplayEvent',
    build: () => WidgetShowcaseBloc(),
    act: (bloc) => bloc.add(
      ToggleWidgetShowcaseDisplayEvent(enabled: displayingWidgetShowcase),
    ),
    expect: () => [
      WidgetShowcaseState(
        displayingWidgetShowcase: displayingWidgetShowcase,
      ),
    ],
  );

  blocTest(
    'WidgetShowcaseBloc.ToggleWidgetOptionsDisplayEvent',
    build: () => WidgetShowcaseBloc(),
    act: (bloc) => bloc.add(const ToggleWidgetOptionsDisplayEvent()),
    expect: () => [
      WidgetShowcaseState(
        displayingWidgetOptions:
            !const WidgetShowcaseState().displayingWidgetOptions,
      ),
    ],
  );
}
