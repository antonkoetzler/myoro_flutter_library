import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_hover_button_widget_showcase_bloc/myoro_hover_button_widget_showcase_bloc.dart';

/// Unit test of [MyoroHoverButtonWidgetShowcaseBloc].
void main() {
  final Color primaryColor =
      kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)];
  final Color onPrimaryColor =
      kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)];
  final double? borderRadius =
      faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;

  blocTest(
    'MyoroHoverButtonWidgetShowcaseBloc.SetPrimaryColorEvent',
    build: () => MyoroHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetPrimaryColorEvent(primaryColor)),
    expect: () =>
        [MyoroHoverButtonWidgetShowcaseState(primaryColor: primaryColor)],
  );

  blocTest(
    'MyoroHoverButtonWidgetShowcaseBloc.SetOnPrimaryColorEvent',
    build: () => MyoroHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetOnPrimaryColorEvent(onPrimaryColor)),
    expect: () =>
        [MyoroHoverButtonWidgetShowcaseState(onPrimaryColor: onPrimaryColor)],
  );

  blocTest(
    'MyoroHoverButtonWidgetShowcaseBloc.SetIsHoveredEvent',
    build: () => MyoroHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(const SetIsHoveredEvent()),
    expect: () => [
      MyoroHoverButtonWidgetShowcaseState(
        isHovered: !const MyoroHoverButtonWidgetShowcaseState().isHovered,
      ),
    ],
  );

  blocTest(
    'MyoroHoverButtonWidgetShowcaseBloc.SetBorderedEvent',
    build: () => MyoroHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(const SetBorderedEvent()),
    expect: () => [
      MyoroHoverButtonWidgetShowcaseState(
        bordered: !const MyoroHoverButtonWidgetShowcaseState().bordered,
      ),
    ],
  );

  blocTest(
    'MyoroHoverButtonWidgetShowcaseBloc.SetBorderRadiusEvent',
    build: () => MyoroHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetBorderRadiusEvent(borderRadius)),
    expect: () => [
      MyoroHoverButtonWidgetShowcaseState(
        borderRadius:
            borderRadius == null ? null : BorderRadius.circular(borderRadius),
      ),
    ],
  );

  blocTest(
    'MyoroHoverButtonWidgetShowcaseBloc.SetTooltipEnabledEvent',
    build: () => MyoroHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(const SetTooltipEnabledEvent()),
    expect: () => [
      MyoroHoverButtonWidgetShowcaseState(
        tooltipEnabled:
            !const MyoroHoverButtonWidgetShowcaseState().tooltipEnabled,
      ),
    ],
  );

  blocTest(
    'MyoroHoverButtonWidgetShowcaseBloc.SetOnPressedEnabledEvent',
    build: () => MyoroHoverButtonWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(const SetOnPressedEnabledEvent()),
    expect: () => [
      MyoroHoverButtonWidgetShowcaseState(
        onPressedEnabled:
            !const MyoroHoverButtonWidgetShowcaseState().onPressedEnabled,
      ),
    ],
  );
}
