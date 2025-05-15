import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_input_widget_showcase_bloc/myoro_input_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroInputWidgetShowcaseBloc].
void main() {
  final MyoroInputWidgetShowcaseEnum formatterEnum =
      MyoroInputWidgetShowcaseEnum.fake();
  final MyoroInputStyleEnum inputStyle = MyoroInputStyleEnum.fake();
  final TextAlign? textAlign =
      faker.randomGenerator.boolean() ? myoroFake<TextAlign>() : null;
  final String? label =
      faker.randomGenerator.boolean() ? faker.lorem.word() : null;
  final String? placeholder =
      faker.randomGenerator.boolean() ? faker.lorem.word() : null;
  final bool suffixProvided = faker.randomGenerator.boolean();
  final bool enabled = faker.randomGenerator.boolean();
  final bool readOnly = faker.randomGenerator.boolean();
  final bool showClearTextButton = faker.randomGenerator.boolean();
  late final TextStyle? inputTextStyle, labelTextStyle;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    inputTextStyle =
        faker.randomGenerator.boolean()
            ? MyoroTypographyDesignSystem.instance.randomTextStyle
            : null;
    labelTextStyle =
        faker.randomGenerator.boolean()
            ? MyoroTypographyDesignSystem.instance.randomTextStyle
            : null;
  });

  blocTest(
    'MyoroInputWidgetShowcaseBloc.SetFormatterEvent',
    build: () => MyoroInputWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetFormatterEvent(formatterEnum)),
    expect: () => [MyoroInputWidgetShowcaseState(typeEnum: formatterEnum)],
  );

  blocTest(
    'MyoroInputWidgetShowcaseBloc.SetInputStyleEvent',
    build: () => MyoroInputWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetInputStyleEvent(inputStyle)),
    expect: () => [MyoroInputWidgetShowcaseState(inputStyle: inputStyle)],
  );

  blocTest(
    'MyoroInputWidgetShowcaseBloc.SetTextAlignEvent',
    build: () => MyoroInputWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTextAlignEvent(textAlign)),
    expect:
        () => [
          MyoroInputWidgetShowcaseState(
            textAlign: textAlign ?? TextAlign.start,
          ),
        ],
  );

  blocTest(
    'MyoroInputWidgetShowcaseBloc.SetInputTextStyleEvent',
    build: () => MyoroInputWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetInputTextStyleEvent(inputTextStyle)),
    expect:
        () => [MyoroInputWidgetShowcaseState(inputTextStyle: inputTextStyle)],
  );

  blocTest(
    'MyoroInputWidgetShowcaseBloc.SetLabelEvent',
    build: () => MyoroInputWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetLabelEvent(label)),
    expect: () => [MyoroInputWidgetShowcaseState(label: label)],
  );

  blocTest(
    'MyoroInputWidgetShowcaseBloc.SetPlaceholderEvent',
    build: () => MyoroInputWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetPlaceholderEvent(placeholder)),
    expect: () => [MyoroInputWidgetShowcaseState(placeholder: placeholder)],
  );

  blocTest(
    'MyoroInputWidgetShowcaseBloc.SetLabelTextStyleEvent',
    build: () => MyoroInputWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetLabelTextStyleEvent(labelTextStyle)),
    expect:
        () => [MyoroInputWidgetShowcaseState(labelTextStyle: labelTextStyle)],
  );

  blocTest(
    'MyoroInputWidgetShowcaseBloc.SetSuffixEnabledEvent',
    build: () => MyoroInputWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetSuffixEnabledEvent(suffixProvided)),
    expect:
        () => [MyoroInputWidgetShowcaseState(suffixProvided: suffixProvided)],
  );

  blocTest(
    'MyoroInputWidgetShowcaseBloc.SetEnabledEvent',
    build: () => MyoroInputWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetEnabledEvent(enabled)),
    expect: () => [MyoroInputWidgetShowcaseState(enabled: enabled)],
  );

  blocTest(
    'MyoroInputWidgetShowcaseBloc.SetReadOnlyEvent',
    build: () => MyoroInputWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetReadOnlyEvent(readOnly)),
    expect: () => [MyoroInputWidgetShowcaseState(readOnly: readOnly)],
  );

  blocTest(
    'MyoroInputWidgetShowcaseBloc.SetShowClearTextButtonEvent',
    build: () => MyoroInputWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetShowClearTextButtonEvent(showClearTextButton)),
    expect:
        () => [
          MyoroInputWidgetShowcaseState(
            showClearTextButton: showClearTextButton,
          ),
        ],
  );

  blocTest(
    'MyoroInputWidgetShowcaseBloc.SetCheckboxOnChangedEnabledEvent',
    build: () => MyoroInputWidgetShowcaseBloc(),
  );
}
