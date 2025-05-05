import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/services.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_button_widget_showcase_bloc/myoro_button_widget_showcase_bloc.dart';

void main() {
  final SystemMouseCursor cursor =
      kMyoroTestCursors[faker.randomGenerator.integer(kMyoroTestCursors.length)];
  final double borderRadius = faker.randomGenerator.decimal(scale: 50);
  final double borderWidth = faker.randomGenerator.decimal(scale: 10);
  final Color color = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)];

  blocTest(
    'MyoroButtonWidgetShowcaseBloc.SetCursorEvent',
    build: () => MyoroButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetCursorEvent(cursor))
        ..add(const SetCursorEvent());
    },
    expect: () {
      return [
        MyoroButtonWidgetShowcaseState(cursor: cursor),
        const MyoroButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroButtonWidgetShowcaseBloc.SetBorderRadiusEvent',
    build: () => MyoroButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetBorderRadiusEvent(borderRadius))
        ..add(const SetBorderRadiusEvent());
    },
    expect: () {
      return [
        MyoroButtonWidgetShowcaseState(borderRadius: borderRadius),
        const MyoroButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroButtonWidgetShowcaseBloc.SetBackgroundColorBuilderEnabledEvent',
    build: () => MyoroButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(
          const SetBackgroundColorBuilderEnabledEvent(
            !MyoroButtonWidgetShowcaseState.backgroundColorBuilderEnabledDefaultValue,
          ),
        )
        ..add(
          const SetBackgroundColorBuilderEnabledEvent(
            MyoroButtonWidgetShowcaseState.backgroundColorBuilderEnabledDefaultValue,
          ),
        );
    },
    expect: () {
      return const [
        MyoroButtonWidgetShowcaseState(
          backgroundColorBuilderEnabled:
              !MyoroButtonWidgetShowcaseState.backgroundColorBuilderEnabledDefaultValue,
        ),
        MyoroButtonWidgetShowcaseState(
          backgroundColorBuilderEnabled:
              MyoroButtonWidgetShowcaseState.backgroundColorBuilderEnabledDefaultValue,
        ),
      ];
    },
  );

  blocTest(
    'MyoroButtonWidgetShowcaseBloc.SetIdleBackgroundColorEvent',
    build: () => MyoroButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetIdleBackgroundColorEvent(color))
        ..add(const SetIdleBackgroundColorEvent());
    },
    expect: () {
      return [
        MyoroButtonWidgetShowcaseState(idleBackgroundColor: color),
        const MyoroButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroButtonWidgetShowcaseBloc.SetHoverBackgroundColorEvent',
    build: () => MyoroButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetHoverBackgroundColorEvent(color))
        ..add(const SetHoverBackgroundColorEvent());
    },
    expect: () {
      return [
        MyoroButtonWidgetShowcaseState(hoverBackgroundColor: color),
        const MyoroButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroButtonWidgetShowcaseBloc.SetTapBackgroundColorEvent',
    build: () => MyoroButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetTapBackgroundColorEvent(color))
        ..add(const SetTapBackgroundColorEvent());
    },
    expect: () {
      return [
        MyoroButtonWidgetShowcaseState(tapBackgroundColor: color),
        const MyoroButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroButtonWidgetShowcaseBloc.SetBorderBuilderEnabledEvent',
    build: () => MyoroButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(
          const SetBorderBuilderEnabledEvent(
            !MyoroButtonWidgetShowcaseState.borderBuilderEnabledDefaultValue,
          ),
        )
        ..add(
          const SetBorderBuilderEnabledEvent(
            MyoroButtonWidgetShowcaseState.borderBuilderEnabledDefaultValue,
          ),
        );
    },
    expect: () {
      return const [
        MyoroButtonWidgetShowcaseState(
          borderBuilderEnabled: !MyoroButtonWidgetShowcaseState.borderBuilderEnabledDefaultValue,
        ),
        MyoroButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroButtonWidgetShowcaseBloc.SetBorderWidthEvent',
    build: () => MyoroButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetBorderWidthEvent(borderWidth))
        ..add(const SetBorderWidthEvent());
    },
    expect: () {
      return [
        MyoroButtonWidgetShowcaseState(borderWidth: borderWidth),
        const MyoroButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroButtonWidgetShowcaseBloc.SetIdleBorderColorEvent',
    build: () => MyoroButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetIdleBorderColorEvent(color))
        ..add(const SetIdleBorderColorEvent());
    },
    expect: () {
      return [
        MyoroButtonWidgetShowcaseState(idleBorderColor: color),
        const MyoroButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroButtonWidgetShowcaseBloc.SetHoverBorderColorEvent',
    build: () => MyoroButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetHoverBorderColorEvent(color))
        ..add(const SetHoverBorderColorEvent());
    },
    expect: () {
      return [
        MyoroButtonWidgetShowcaseState(hoverBorderColor: color),
        const MyoroButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroButtonWidgetShowcaseBloc.SetTapBorderColorEvent',
    build: () => MyoroButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(SetTapBorderColorEvent(color))
        ..add(const SetTapBorderColorEvent());
    },
    expect: () {
      return [
        MyoroButtonWidgetShowcaseState(tapBorderColor: color),
        const MyoroButtonWidgetShowcaseState(),
      ];
    },
  );

  blocTest(
    'MyoroButtonWidgetShowcaseBloc.SetOnTapDownEnabledEvent',
    build: () => MyoroButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(
          const SetOnTapDownEnabledEvent(
            !MyoroButtonWidgetShowcaseState.onTapDownEnabledDefaultValue,
          ),
        )
        ..add(
          const SetOnTapDownEnabledEvent(
            MyoroButtonWidgetShowcaseState.onTapDownEnabledDefaultValue,
          ),
        );
    },
    expect: () {
      return const [
        MyoroButtonWidgetShowcaseState(
          onTapDownEnabled: !MyoroButtonWidgetShowcaseState.onTapDownEnabledDefaultValue,
        ),
        MyoroButtonWidgetShowcaseState(
          onTapDownEnabled: MyoroButtonWidgetShowcaseState.onTapDownEnabledDefaultValue,
        ),
      ];
    },
  );

  blocTest(
    'MyoroButtonWidgetShowcaseBloc.SetOnTapUpEnabledEvent',
    build: () => MyoroButtonWidgetShowcaseBloc(),
    act: (bloc) {
      bloc
        ..add(
          const SetOnTapUpEnabledEvent(!MyoroButtonWidgetShowcaseState.onTapUpEnabledDefaultValue),
        )
        ..add(
          const SetOnTapUpEnabledEvent(MyoroButtonWidgetShowcaseState.onTapUpEnabledDefaultValue),
        );
    },
    expect: () {
      return const [
        MyoroButtonWidgetShowcaseState(
          onTapUpEnabled: !MyoroButtonWidgetShowcaseState.onTapUpEnabledDefaultValue,
        ),
        MyoroButtonWidgetShowcaseState(
          onTapUpEnabled: MyoroButtonWidgetShowcaseState.onTapUpEnabledDefaultValue,
        ),
      ];
    },
  );
}
