import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_slider_widget_showcase_bloc/myoro_slider_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroSlider].
final class MyoroSliderWidgetShowcase extends StatelessWidget {
  const MyoroSliderWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) => MyoroSliderWidgetShowcaseBloc(
            width:
                context
                    .resolveThemeExtension<
                      MyoroSliderWidgetShowcaseThemeExtension
                    >()
                    .widgetSize,
          ),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _LabelOption(),
          _LabelTextStyleOption(),
          _WidthOption(),
          _CurrentValueIndicatorTextBuilderOption(),
          _MaxValueIndicatorTextBuilderOption(),
          _FooterIndicatorTextBuilderOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatefulWidget {
  const _Widget();

  @override
  State<_Widget> createState() => _WidgetState();
}

final class _WidgetState extends State<_Widget> {
  late final _widgetSize =
      context
          .resolveThemeExtension<MyoroSliderWidgetShowcaseThemeExtension>()
          .widgetSize;
  late final _hiddenKittyCoverWidthNotifier = ValueNotifier<double>(
    _widgetSize,
  );

  @override
  void dispose() {
    _hiddenKittyCoverWidthNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _widgetSize,
      height: _widgetSize,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(child: _HiddenKitty(_hiddenKittyCoverWidthNotifier)),
          _Slider(_hiddenKittyCoverWidthNotifier),
        ],
      ),
    );
  }
}

final class _HiddenKitty extends StatelessWidget {
  final ValueNotifier<double> _hiddenKittyCoverWidthNotifier;

  const _HiddenKitty(this._hiddenKittyCoverWidthNotifier);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/are_you_silly.jpg'),
        Positioned(
          child: ValueListenableBuilder(
            valueListenable: _hiddenKittyCoverWidthNotifier,
            builder: (_, double width, __) {
              return Container(
                width: width,
                color:
                    context
                        .resolveThemeExtension<
                          MyoroSliderWidgetShowcaseThemeExtension
                        >()
                        .hiddenKittyContainerColor,
              );
            },
          ),
        ),
      ],
    );
  }
}

final class _Slider extends StatelessWidget {
  final ValueNotifier<double> _hiddenKittyCoverWidthNotifier;

  const _Slider(this._hiddenKittyCoverWidthNotifier);

  String _currentValueIndicatorBuilder(double value) =>
      value.toStringAsFixed(0);
  String _maxValueIndicatorTextBuilder(double maxValue) =>
      maxValue.toStringAsFixed(0);
  String _footerIndicatorTextBuilder(double widgetSize, double value) =>
      'Keep going! You\'re only ${(widgetSize / value).toStringAsFixed(0)}% of the way there!';

  void _onChanged(double value) => _hiddenKittyCoverWidthNotifier.value = value;

  @override
  Widget build(BuildContext context) {
    final widgetSize =
        context
            .resolveThemeExtension<MyoroSliderWidgetShowcaseThemeExtension>()
            .widgetSize;

    return BlocBuilder<
      MyoroSliderWidgetShowcaseBloc,
      MyoroSliderWidgetShowcaseState
    >(
      builder: (_, MyoroSliderWidgetShowcaseState state) {
        return MyoroSlider(
          label: state.label,
          labelTextStyle: state.labelTextStyle,
          width: state.width,
          currentValueIndicatorTextBuilder:
              state.currentValueIndicatorTextBuilderEnabled
                  ? _currentValueIndicatorBuilder
                  : null,
          maxValueIndicatorTextBuilder:
              state.maxValueIndicatorTextBuilderEnabled
                  ? _maxValueIndicatorTextBuilder
                  : null,
          footerIndicatorTextBuilder:
              state.footerIndicatorTextBuilderEnabled
                  ? (double value) =>
                      _footerIndicatorTextBuilder(widgetSize, value)
                  : null,
          initialValue: _hiddenKittyCoverWidthNotifier.value,
          maxValue: widgetSize,
          onChanged: _onChanged,
        );
      },
    );
  }
}

final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  void _onChanged(BuildContext context, String text) {
    context.resolveBloc<MyoroSliderWidgetShowcaseBloc>().add(
      SetLabelEvent(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyoroInput(
      configuration: MyoroInputConfiguration(
        inputStyle:
            context
                .resolveThemeExtension<
                  MyoroSliderWidgetShowcaseThemeExtension
                >()
                .inputStyle,
        label: '[MyoroSlider.label]',
        onChanged: (String text) => _onChanged(context, text),
      ),
    );
  }
}

final class _LabelTextStyleOption extends StatelessWidget {
  const _LabelTextStyleOption();

  MyoroMenuItem _itemBuilder(TextStyle textStyle) {
    return MyoroMenuItem(
      text: MyoroTypographyDesignSystem.instance.getTextStyleName(textStyle),
    );
  }

  void _onChanged(BuildContext context, TextStyle? textStyle) {
    context.resolveBloc<MyoroSliderWidgetShowcaseBloc>().add(
      SetLabelTextStyleEvent(textStyle),
    );
  }

  @override
  Widget build(BuildContext context) {
    final typographyInstance = MyoroTypographyDesignSystem.instance;
    final dataConfiguration = MyoroDataConfiguration(
      staticItems: typographyInstance.allTextStyles,
    );

    return MyoroSingularDropdown<TextStyle>(
      configuration: MyoroSingularDropdownConfiguration(
        label: '[MyoroSlider.labelTextStyle]',
        dataConfiguration: dataConfiguration,
        menuItemBuilder: _itemBuilder,
        selectedItemBuilder: typographyInstance.getTextStyleName,
        onChanged: (TextStyle? textStyles) => _onChanged(context, textStyles),
      ),
    );
  }
}

final class _WidthOption extends StatelessWidget {
  const _WidthOption();

  void _onChanged(BuildContext context, double value) {
    context.resolveBloc<MyoroSliderWidgetShowcaseBloc>().add(
      SetWidthEvent(value),
    );
  }

  @override
  Widget build(BuildContext context) {
    final widgetSize =
        context
            .resolveThemeExtension<MyoroSliderWidgetShowcaseThemeExtension>()
            .widgetSize;

    return MyoroSlider(
      label: '[MyoroSlider.width]',
      minValue: 100,
      maxValue: widgetSize,
      initialValue: widgetSize,
      onChanged: (double value) => _onChanged(context, value),
    );
  }
}

final class _CurrentValueIndicatorTextBuilderOption extends StatelessWidget {
  const _CurrentValueIndicatorTextBuilderOption();

  void _onChanged(MyoroSliderWidgetShowcaseBloc bloc, bool value) {
    bloc.add(SetCurrentValueIndicatorTextBuilderEnabledEvent(value));
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroSliderWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: 'Label on the left?',
      initialValue: bloc.state.currentValueIndicatorTextBuilderEnabled,
      onChanged: (bool value) => _onChanged(bloc, value),
    );
  }
}

final class _MaxValueIndicatorTextBuilderOption extends StatelessWidget {
  const _MaxValueIndicatorTextBuilderOption();

  void _onChanged(MyoroSliderWidgetShowcaseBloc bloc, bool value) {
    bloc.add(SetMaxValueIndicatorTextBuilderEnabledEvent(value));
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroSliderWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: 'Label on the right?',
      initialValue: bloc.state.maxValueIndicatorTextBuilderEnabled,
      onChanged: (bool value) => _onChanged(bloc, value),
    );
  }
}

final class _FooterIndicatorTextBuilderOption extends StatelessWidget {
  const _FooterIndicatorTextBuilderOption();

  void _onChanged(MyoroSliderWidgetShowcaseBloc bloc, bool value) {
    bloc.add(SetFooterIndicatorTextBuilderEnabledEvent(value));
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroSliderWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: 'Label on the bottom?',
      initialValue: bloc.state.footerIndicatorTextBuilderEnabled,
      onChanged: (bool value) => _onChanged(bloc, value),
    );
  }
}
