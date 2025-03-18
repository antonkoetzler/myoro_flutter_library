import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_tooltip_widget_showcase_bloc/myoro_tooltip_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroTooltip].
final class MyoroTooltipWidgetShowcase extends StatelessWidget {
  const MyoroTooltipWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroTooltipWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _MarginOption(),
          _TextOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroTooltipWidgetShowcaseBloc,
        MyoroTooltipWidgetShowcaseState>(
      builder: (_, MyoroTooltipWidgetShowcaseState state) {
        return MyoroTooltip(
          margin: EdgeInsets.all(state.margin),
          text: state.text,
          child: const _Child(),
        );
      },
    );
  }
}

final class _Child extends StatelessWidget {
  const _Child();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context
        .resolveThemeExtension<MyoroTooltipWidgetShowcaseThemeExtension>();
    final size = themeExtension.childSize;
    final decoration = themeExtension.childDecoration;
    final textStyle = themeExtension.childTextStyle;

    return Container(
      width: size,
      height: size,
      decoration: decoration,
      child: Text(
        'Hover over me!',
        style: textStyle,
      ),
    );
  }
}

final class _MarginOption extends StatelessWidget {
  const _MarginOption();

  String _currentValueIndicatorTextBuilder(double value) =>
      value.toStringAsFixed(2);
  String _maxValueIndicatorTextBuilder(double maxValue) =>
      maxValue.toStringAsFixed(2);

  void _onChanged(BuildContext context, double value) {
    context.resolveBloc<MyoroTooltipWidgetShowcaseBloc>().add(
          SetMarginEvent(
            value,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return MyoroSlider(
      label: '[MyoroTooltip.margin]',
      maxValue: 50,
      currentValueIndicatorTextBuilder: _currentValueIndicatorTextBuilder,
      maxValueIndicatorTextBuilder: _maxValueIndicatorTextBuilder,
      onChanged: (double value) => _onChanged(context, value),
    );
  }
}

final class _TextOption extends StatelessWidget {
  const _TextOption();

  @override
  Widget build(BuildContext context) {
    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: '[MyoroTooltip.text]',
        inputStyle: context
            .resolveThemeExtension<MyoroTooltipWidgetShowcaseThemeExtension>()
            .inputStyle,
        onChanged: (String text) => context
            .resolveBloc<MyoroTooltipWidgetShowcaseBloc>()
            .add(SetTextEvent(text)),
      ),
    );
  }
}
