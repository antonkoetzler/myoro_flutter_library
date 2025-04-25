import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_radio_widget_showcase_bloc/myoro_radio_widget_showcase_bloc.dart';

/// Unit test of [MyoroRadioWidgetShowcaseBloc].
void main() {
  final String? label = faker.randomGenerator.boolean() ? faker.lorem.word() : null;
  late final TextStyle? labelTextStyle;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    labelTextStyle =
        faker.randomGenerator.boolean()
            ? MyoroTypographyDesignSystem.instance.randomTextStyle
            : null;
  });

  blocTest(
    'MyoroRadioWidgetShowcaseBloc.SetLabelEvent',
    build: () => MyoroRadioWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetLabelEvent(label)),
    expect: () => [MyoroRadioWidgetShowcaseState(label: label)],
  );

  blocTest(
    'MyoroRadioWidgetShowcaseBloc.SetLabelTextStyleEvent',
    build: () => MyoroRadioWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetLabelTextStyleEvent(labelTextStyle)),
    expect: () => [MyoroRadioWidgetShowcaseState(labelTextStyle: labelTextStyle)],
  );
}
