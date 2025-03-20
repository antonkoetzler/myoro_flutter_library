import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_dropdown_widget_showcases_bloc/myoro_dropdown_widget_showcases_bloc.dart';

/// Unit test of [MyoroDropdownWidgetShowcasesBloc].
void main() {
  final String label = faker.lorem.word();
  late final TextStyle labelTextStyle;
  final bool enabled = faker.randomGenerator.boolean();
  final bool allowItemClearing = faker.randomGenerator.boolean();
  final double? menuMaxHeight =
      faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  final bool menuSearchCallbackEnabled = faker.randomGenerator.boolean();
  final bool checkboxOnChangedEnabled = faker.randomGenerator.boolean();

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    labelTextStyle = MyoroTypographyTheme.instance.randomTextStyle;
  });

  blocTest(
    'MyoroDropdownWidgetShowcaseBloc.SetLabelEvent',
    build: () => MyoroDropdownWidgetShowcasesBloc(),
    act: (bloc) => bloc.add(SetLabelEvent(label)),
    expect: () => [MyoroDropdownWidgetShowcasesState(label: label)],
  );

  blocTest(
    'MyoroDropdownWidgetShowcaseBloc.SetLabelTextStyleEvent',
    build: () => MyoroDropdownWidgetShowcasesBloc(),
    act: (bloc) => bloc.add(SetLabelTextStyleEvent(labelTextStyle)),
    expect: () => [
      MyoroDropdownWidgetShowcasesState(labelTextStyle: labelTextStyle),
    ],
  );

  blocTest(
    'MyoroDropdownWidgetShowcaseBloc.SetEnabledEvent',
    build: () => MyoroDropdownWidgetShowcasesBloc(),
    act: (bloc) => bloc.add(SetEnabledEvent(enabled)),
    expect: () => [MyoroDropdownWidgetShowcasesState(enabled: enabled)],
  );

  blocTest(
    'MyoroDropdownWidgetShowcaseBloc.SetAllowItemClearingEvent',
    build: () => MyoroDropdownWidgetShowcasesBloc(),
    act: (bloc) => bloc.add(SetAllowItemClearingEvent(allowItemClearing)),
    expect: () => [
      MyoroDropdownWidgetShowcasesState(
        allowItemClearing: allowItemClearing,
      ),
    ],
  );

  blocTest(
    'MyoroDropdownWidgetShowcaseBloc.SetMenuMaxHeightEvent',
    build: () => MyoroDropdownWidgetShowcasesBloc(),
    act: (bloc) => bloc.add(SetMenuMaxHeightEvent(menuMaxHeight)),
    expect: () =>
        [MyoroDropdownWidgetShowcasesState(menuMaxHeight: menuMaxHeight)],
  );

  blocTest(
    'MyoroDropdownWidgetShowcaseBloc.SetMenuSearchCallbackEnabledEvent',
    build: () => MyoroDropdownWidgetShowcasesBloc(),
    act: (bloc) => bloc.add(
      SetMenuSearchCallbackEnabledEvent(menuSearchCallbackEnabled),
    ),
    expect: () => [
      MyoroDropdownWidgetShowcasesState(
        menuSearchCallbackEnabled: menuSearchCallbackEnabled,
      ),
    ],
  );

  blocTest(
    'MyoroDropdownWidgetShowcaseBloc.SetCheckboxOnChangedEvent',
    build: () => MyoroDropdownWidgetShowcasesBloc(),
    act: (bloc) => bloc.add(
      SetCheckboxOnChangedEnabledEvent(checkboxOnChangedEnabled),
    ),
    expect: () => [
      MyoroDropdownWidgetShowcasesState(
        checkboxOnChangedEnabled: checkboxOnChangedEnabled,
      ),
    ],
  );
}
