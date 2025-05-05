import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_icon_text_button_widget_showcase_bloc/myoro_icon_text_button_widget_showcase_bloc.dart';

void main() {
  final double spacing = faker.randomGenerator.decimal(scale: 50);
  final EdgeInsets padding = EdgeInsets.all(faker.randomGenerator.decimal(scale: 50));
  final Color color = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)];
  final IconData icon = kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)];
  final double iconSize = faker.randomGenerator.decimal(scale: 200);
  final String text = faker.lorem.word();
  final int maxLines = faker.randomGenerator.integer(10);
  final TextOverflow textOverflow =
      TextOverflow.values[faker.randomGenerator.integer(TextOverflow.values.length)];
  final TextAlign textAlign =
      TextAlign.values[faker.randomGenerator.integer(TextAlign.values.length)];
  late final TextStyle textStyle;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    textStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;
  });

  blocTest(
    'MyoroIconTextButtonWidgetShowcaseBloc.SetInvertEvent',
    build: () => MyoroIconTextButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(const SetInvertEvent(!MyoroIconTextButtonConfiguration.invertDefaultValue))
        ..add(const SetInvertEvent(MyoroIconTextButtonConfiguration.invertDefaultValue));
    },
    expect: () {
      return const [
        MyoroIconTextButtonWidgetShowcaseState(
          invert: !MyoroIconTextButtonConfiguration.invertDefaultValue,
        ),
        MyoroIconTextButtonWidgetShowcaseState(
          invert: MyoroIconTextButtonConfiguration.invertDefaultValue,
        ),
      ];
    },
  );

  blocTest(
    'MyoroIconTextButtonWidgetShowcaseBloc.SetSpacingEvent',
    build: () => MyoroIconTextButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetSpacingEvent(spacing))
        ..add(const SetSpacingEvent(MyoroIconTextButtonConfiguration.spacingDefaultValue));
    },
    expect: () {
      return [
        MyoroIconTextButtonWidgetShowcaseState(spacing: spacing),
        const MyoroIconTextButtonWidgetShowcaseState(
          spacing: MyoroIconTextButtonConfiguration.spacingDefaultValue,
        ),
      ];
    },
  );

  blocTest(
    'MyoroIconTextButtonWidgetShowcaseBloc.SetPaddingEvent',
    build: () => MyoroIconTextButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc.add(
        SetPaddingEvent(
          top: padding.top,
          bottom: padding.bottom,
          left: padding.left,
          right: padding.right,
        ),
      );
    },
    expect: () {
      return [MyoroIconTextButtonWidgetShowcaseState(padding: padding)];
    },
  );

  blocTest(
    'MyoroIconTextButtonWidgetShowcaseBloc.SetContentColorBuilderEnabledEvent',
    build: () => MyoroIconTextButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(
          const SetContentColorBuilderEnabledEvent(
            !MyoroIconTextButtonWidgetShowcaseState.contentColorBuilderEnabledDefaultValue,
          ),
        )
        ..add(
          const SetContentColorBuilderEnabledEvent(
            MyoroIconTextButtonWidgetShowcaseState.contentColorBuilderEnabledDefaultValue,
          ),
        );
    },
    expect: () {
      return const [
        MyoroIconTextButtonWidgetShowcaseState(
          contentColorBuilderEnabled:
              !MyoroIconTextButtonWidgetShowcaseState.contentColorBuilderEnabledDefaultValue,
        ),
        MyoroIconTextButtonWidgetShowcaseState(
          contentColorBuilderEnabled:
              MyoroIconTextButtonWidgetShowcaseState.contentColorBuilderEnabledDefaultValue,
        ),
      ];
    },
  );

  blocTest(
    'MyoroIconTextButtonWidgetShowcaseBloc.SetIdleContentColorEvent',
    build: () => MyoroIconTextButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetIdleContentColorEvent(color))
        ..add(const SetIdleContentColorEvent());
    },
    expect: () {
      return [
        MyoroIconTextButtonWidgetShowcaseState(idleContentColor: color),
        const MyoroIconTextButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroIconTextButtonWidgetShowcaseBloc.SetHoverContentColorEvent',
    build: () => MyoroIconTextButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetHoverContentColorEvent(color))
        ..add(const SetHoverContentColorEvent());
    },
    expect: () {
      return [
        MyoroIconTextButtonWidgetShowcaseState(hoverContentColor: color),
        const MyoroIconTextButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroIconTextButtonWidgetShowcaseBloc.SetTapContentColorEvent',
    build: () => MyoroIconTextButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetTapContentColorEvent(color))
        ..add(const SetTapContentColorEvent());
    },
    expect: () {
      return [
        MyoroIconTextButtonWidgetShowcaseState(tapContentColor: color),
        const MyoroIconTextButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroIconTextButtonWidgetShowcaseBloc.SetIconEvent',
    build: () => MyoroIconTextButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetIconEvent(icon))
        ..add(const SetIconEvent());
    },
    expect: () {
      return [
        MyoroIconTextButtonWidgetShowcaseState(icon: icon),
        const MyoroIconTextButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroIconTextButtonWidgetShowcaseBloc.SetIconSizeEvent',
    build: () => MyoroIconTextButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetIconSizeEvent(iconSize))
        ..add(const SetIconSizeEvent());
    },
    expect: () {
      return [
        MyoroIconTextButtonWidgetShowcaseState(iconSize: iconSize),
        const MyoroIconTextButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroIconTextButtonWidgetShowcaseBloc.SetTextEvent',
    build: () => MyoroIconTextButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc.add(SetTextEvent(text));
    },
    expect: () {
      return [MyoroIconTextButtonWidgetShowcaseState(text: text)];
    },
  );

  blocTest(
    'MyoroIconTextButtonWidgetShowcaseBloc.SetTextMaxLinesEvent',
    build: () => MyoroIconTextButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTextMaxLinesEvent(maxLines)),
    expect: () {
      return [MyoroIconTextButtonWidgetShowcaseState(textMaxLines: maxLines)];
    },
  );

  blocTest(
    'MyoroIconTextButtonWidgetShowcaseBloc.SetTextOverflowEvent',
    build: () => MyoroIconTextButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTextOverflowEvent(textOverflow)),
    expect: () {
      return [MyoroIconTextButtonWidgetShowcaseState(textOverflow: textOverflow)];
    },
  );

  blocTest(
    'MyoroIconTextButtonWidgetShowcaseBloc.SetTextAlignmentEvent',
    build: () => MyoroIconTextButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTextAlignmentEvent(textAlign)),
    expect: () {
      return [MyoroIconTextButtonWidgetShowcaseState(textAlignment: textAlign)];
    },
  );

  blocTest(
    'MyoroIconTextButtonWidgetShowcaseBloc.SetTextStyleEvent',
    build: () => MyoroIconTextButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTextStyleEvent(textStyle)),
    expect: () {
      return [MyoroIconTextButtonWidgetShowcaseState(textStyle: textStyle)];
    },
  );
}
