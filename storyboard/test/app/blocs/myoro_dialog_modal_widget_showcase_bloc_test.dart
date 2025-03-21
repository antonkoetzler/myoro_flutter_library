import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_dialog_modal_widget_showcase_bloc/myoro_dialog_modal_widget_showcase_bloc.dart';

/// Unit test of [MyoroDialogModalWidgetShowcaseBloc].
void main() {
  final bool invertButtons = faker.randomGenerator.boolean();
  final String? confirmButtonText =
      faker.randomGenerator.boolean() ? faker.lorem.word() : null;
  final String? text =
      faker.randomGenerator.boolean() ? faker.lorem.word() : null;
  late final TextStyle? textStyle;
  final bool childEnabled = faker.randomGenerator.boolean();

  setUpAll(() {
    MyoroTypographyDesignSystem.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    textStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;
  });

  blocTest(
    'MyoroDialogModalWidgetShowcaseBloc.SetInvertButtonsEvent',
    build: () => MyoroDialogModalWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetInvertButtonsEvent(invertButtons)),
    expect:
        () => [
          MyoroDialogModalWidgetShowcaseState(invertButtons: invertButtons),
        ],
  );

  blocTest(
    'MyoroDialogModalWidgetShowcaseBloc.SetConfirmButtonTextEvent',
    build: () => MyoroDialogModalWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetConfirmButtonTextEvent(confirmButtonText)),
    expect:
        () => [
          MyoroDialogModalWidgetShowcaseState(
            confirmButtonText: confirmButtonText,
          ),
        ],
  );

  blocTest(
    'MyoroDialogModalWidgetShowcaseBloc.SetTextEvent',
    build: () => MyoroDialogModalWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTextEvent(text)),
    expect:
        () => [
          MyoroDialogModalWidgetShowcaseState(
            text: text,
            textEnabled: text != null,
            childEnabled: text == null,
          ),
        ],
  );

  blocTest(
    'MyoroDialogModalWidgetShowcaseBloc.SetTextStyleEvent',
    build: () => MyoroDialogModalWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTextStyleEvent(textStyle)),
    expect: () => [MyoroDialogModalWidgetShowcaseState(textStyle: textStyle)],
  );

  blocTest(
    'MyoroDialogModalWidgetShowcaseBloc.SetChildEvent',
    build: () => MyoroDialogModalWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetChildEvent(childEnabled)),
    expect:
        () => [
          MyoroDialogModalWidgetShowcaseState(
            text:
                childEnabled ? null : 'Message regarding the action goes here.',
            textEnabled: !childEnabled,
            childEnabled: childEnabled,
          ),
        ],
  );
}
