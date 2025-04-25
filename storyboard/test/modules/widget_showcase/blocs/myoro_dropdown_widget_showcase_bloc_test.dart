import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_dropdown_widget_showcase_bloc/myoro_dropdown_widget_showcase_bloc.dart';

void main() {
  final String label = faker.randomGenerator.string(100, min: 1);

  blocTest(
    'MyoroDropdownWidgetShowcaseBloc.SetLabelEvent',
    build: () => MyoroDropdownWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetLabelEvent(label))
        ..add(const SetLabelEvent());
    },
    expect: () {
      return [
        MyoroDropdownWidgetShowcaseState(label: label),
        const MyoroDropdownWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroDropdownWidgetShowcaseBloc.SetEnabledEvent',
    build: () => MyoroDropdownWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(const SetEnabledEvent())
        ..add(const SetEnabledEvent(MyoroDropdownConfiguration.enabledDefaultValue));
    },
    expect: () {
      return [
        const MyoroDropdownWidgetShowcaseState(
          enabled: !MyoroDropdownConfiguration.enabledDefaultValue,
        ),
        const MyoroDropdownWidgetShowcaseState(
          enabled: MyoroDropdownConfiguration.enabledDefaultValue,
        ),
      ];
    },
  );

  blocTest(
    'MyoroDropdownWidgetShowcaseBloc.SetAllowItemClearingEvent',
    build: () => MyoroDropdownWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(const SetAllowItemClearingEvent())
        ..add(
          const SetAllowItemClearingEvent(MyoroDropdownConfiguration.allowItemClearingDefaultValue),
        );
    },
    expect: () {
      return [
        const MyoroDropdownWidgetShowcaseState(
          allowItemClearing: !MyoroDropdownConfiguration.allowItemClearingDefaultValue,
        ),
        const MyoroDropdownWidgetShowcaseState(
          allowItemClearing: MyoroDropdownConfiguration.allowItemClearingDefaultValue,
        ),
      ];
    },
  );

  blocTest(
    'MyoroDropdownWidgetShowcaseBloc.SetCheckboxOnChangedEnabledEvent',
    build: () => MyoroDropdownWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(const SetCheckboxOnChangedEnabledEvent())
        ..add(
          const SetCheckboxOnChangedEnabledEvent(
            MyoroDropdownWidgetShowcaseState.checkboxOnChangedEnabledDefaultValue,
          ),
        );
    },
    expect: () {
      return [
        const MyoroDropdownWidgetShowcaseState(
          checkboxOnChangedEnabled:
              !MyoroDropdownWidgetShowcaseState.checkboxOnChangedEnabledDefaultValue,
        ),
        const MyoroDropdownWidgetShowcaseState(
          checkboxOnChangedEnabled:
              MyoroDropdownWidgetShowcaseState.checkboxOnChangedEnabledDefaultValue,
        ),
      ];
    },
  );
}
