import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_icon_text_hover_button_widget_showcase_bloc/myoro_icon_text_hover_button_widget_showcase_bloc.dart';

/// Unit test of [MyoroIconTextHoverButtonWidgetShowcaseBloc].
void main() {
  final IconData? icon = faker.randomGenerator.boolean()
      ? kMyoroTestIcons[faker.randomGenerator.integer(
          kMyoroTestIcons.length,
        )]
      : null;
  final double? iconSize =
      faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  final String text = faker.randomGenerator.string(1000, min: 0);
  late final TextStyle? textStyle;
  final TextAlign? textAlign = faker.randomGenerator.boolean()
      ? TextAlign.values[faker.randomGenerator.integer(
          TextAlign.values.length,
        )]
      : null;
  final double? padding =
      faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  final MainAxisAlignment? mainAxisAlignment = faker.randomGenerator.boolean()
      ? MainAxisAlignment.values[faker.randomGenerator.integer(
          MainAxisAlignment.values.length,
        )]
      : null;
  final bool onPressedEnabled = faker.randomGenerator.boolean();

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    textStyle = MyoroTypographyTheme.instance.randomTextStyle;
  });

  blocTest(
    'MyoroIconTextHoverButtonWidgetShowcaseBloc.SetIconEvent',
    build: () => MyoroIconTextHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetIconEvent(icon)),
    expect: () => [MyoroIconTextHoverButtonWidgetShowcaseState(icon: icon)],
  );

  blocTest(
    'MyoroIconTextHoverButtonWidgetShowcaseBloc.SetIconSizeEvent',
    build: () => MyoroIconTextHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetIconSizeEvent(iconSize)),
    expect: () =>
        [MyoroIconTextHoverButtonWidgetShowcaseState(iconSize: iconSize)],
  );

  blocTest(
    'MyoroIconTextHoverButtonWidgetShowcaseBloc.SetTextEvent',
    build: () => MyoroIconTextHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTextEvent(text)),
    expect: () => [MyoroIconTextHoverButtonWidgetShowcaseState(text: text)],
  );

  blocTest(
    'MyoroIconTextHoverButtonWidgetShowcaseBloc.SetTextStyleEvent',
    build: () => MyoroIconTextHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTextStyleEvent(textStyle)),
    expect: () => [
      MyoroIconTextHoverButtonWidgetShowcaseState(textStyle: textStyle),
    ],
  );

  blocTest(
    'MyoroIconTextHoverButtonWidgetShowcaseBloc.SetTextAlignEvent',
    build: () => MyoroIconTextHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTextAlignEvent(textAlign)),
    expect: () => [
      MyoroIconTextHoverButtonWidgetShowcaseState(textAlign: textAlign),
    ],
  );

  blocTest(
    'MyoroIconTextHoverButtonWidgetShowcaseBloc.SetPaddingEvent',
    build: () => MyoroIconTextHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetPaddingEvent(padding)),
    expect: () =>
        [MyoroIconTextHoverButtonWidgetShowcaseState(padding: padding)],
  );

  blocTest(
    'MyoroIconTextHoverButtonWidgetShowcaseBloc.SetMainAxisAlignmentEvent',
    build: () => MyoroIconTextHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetMainAxisAlignmentEvent(mainAxisAlignment)),
    expect: () => [
      MyoroIconTextHoverButtonWidgetShowcaseState(
        mainAxisAlignment: mainAxisAlignment,
      ),
    ],
  );

  blocTest(
    'MyoroIconTextHoverButtonWidgetShowcaseBloc.SetOnPressedEnabledEvent',
    build: () => MyoroIconTextHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetOnPressedEnabledEvent(onPressedEnabled)),
    expect: () => [
      MyoroIconTextHoverButtonWidgetShowcaseState(
        onPressedEnabled: onPressedEnabled,
      ),
    ],
  );
}
