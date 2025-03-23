import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_checkbox_widget_showcase_bloc/myoro_checkbox_widget_showcase_bloc.dart';

/// Unit test of [MyoroCheckboxWidgetShowcaseBloc].
void main() {
  final String label = faker.lorem.word();
  late final TextStyle labelTextStyle1, labelTextStyle2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    labelTextStyle1 = MyoroTypographyDesignSystem.instance.randomTextStyle;
    labelTextStyle2 = MyoroTypographyDesignSystem.instance.randomTextStyle;
  });

  blocTest(
    'MyoroCheckboxWidgetShowcaseBloc.SetLabelEvent',
    build:
        () => MyoroCheckboxWidgetShowcaseBloc(labelTextStyle: labelTextStyle1),
    act: (bloc) => bloc.add(SetLabelEvent(label)),
    expect:
        () => [
          MyoroCheckboxWidgetShowcaseState(
            label: label,
            labelTextStyle: labelTextStyle1,
          ),
        ],
  );

  blocTest(
    'MyoroCheckboxWidgetShowcaseBloc.SetLabelTextStyleEvent',
    build:
        () => MyoroCheckboxWidgetShowcaseBloc(labelTextStyle: labelTextStyle1),
    act: (bloc) => bloc.add(SetLabelTextStyleEvent(labelTextStyle2)),
    expect:
        () => [
          MyoroCheckboxWidgetShowcaseState(labelTextStyle: labelTextStyle2),
        ],
  );
}
