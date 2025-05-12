import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_button_widget_showcase_bloc/myoro_button_widget_showcase_bloc.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_icon_text_button_widget_showcase_bloc/myoro_icon_text_button_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroIconTextButton].
final class MyoroIconTextButtonWidgetShowcase extends StatelessWidget {
  const MyoroIconTextButtonWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MyoroButtonWidgetShowcaseBloc()),
        BlocProvider(create: (_) => MyoroIconTextButtonWidgetShowcaseBloc()),
      ],
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          MyoroButtonWidgetShowcaseCursorOption(),
          MyoroButtonWidgetShowcaseBorderRadiusOption(),
          MyoroButtonWidgetShowcaseBackgroundColorBuilderOption(),
          MyoroButtonWidgetShowcaseBorderBuilderOption(),
          MyoroButtonWidgetShowcaseOnTapDownOption(),
          MyoroButtonWidgetShowcaseOnTapUpOption(),
          _InvertOption(),
          _SpacingOption(),
          _PaddingOption(),
          _ContentColorBuilderOption(),
          _IconOption(),
          _IconSizeOption(),
          _TextOption(),
          _TextMaxLinesOption(),
          _TextOverflowOption(),
          _TextAlignmentOption(),
          _TextStyleOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroButtonWidgetShowcaseBloc, MyoroButtonWidgetShowcaseState>(
      builder: _buttonWidgetShowcaseBlocBuilder,
    );
  }

  Widget _buttonWidgetShowcaseBlocBuilder(BuildContext context, MyoroButtonWidgetShowcaseState buttonState) {
    return BlocConsumer<MyoroIconTextButtonWidgetShowcaseBloc, MyoroIconTextButtonWidgetShowcaseState>(
      listener: (_, iconTextButtonState) {
        _iconTextButtonWidgetShowcaseBlocListener(context, iconTextButtonState);
      },
      builder: (_, iconTextButtonState) {
        return _iconTextButtonWidgetShowcaseBlocBuilder(context, buttonState, iconTextButtonState);
      },
    );
  }

  void _iconTextButtonWidgetShowcaseBlocListener(
    BuildContext context,
    MyoroIconTextButtonWidgetShowcaseState iconTextButtonState,
  ) {
    if (iconTextButtonState.icon != null || iconTextButtonState.text.isNotEmpty) {
      return;
    }

    // This is to prevent the icon and text being null
    // assertion error of [MyoroIconTextButtonConfiguration].
    final bloc = context.resolveBloc<MyoroIconTextButtonWidgetShowcaseBloc>();
    if (faker.randomGenerator.boolean()) {
      bloc.add(SetIconEvent(myoroFake<IconData>()));
    } else {
      bloc.add(const SetTextEvent(MyoroIconTextButtonWidgetShowcaseState.textDefaultValue));
    }
  }

  Widget _iconTextButtonWidgetShowcaseBlocBuilder(
    BuildContext context,
    MyoroButtonWidgetShowcaseState buttonState,
    MyoroIconTextButtonWidgetShowcaseState iconTextButtonState,
  ) {
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(
          cursor: buttonState.cursor ?? SystemMouseCursors.click,
          borderRadius: buttonState.borderRadius != null ? BorderRadius.circular(buttonState.borderRadius!) : null,
          backgroundColorBuilder:
              buttonState.backgroundColorBuilderEnabled
                  ? (MyoroTapStatusEnum tapStatusEnum) {
                    return MyoroButtonWidgetShowcaseBloc.backgroundColorBuilder(tapStatusEnum, buttonState);
                  }
                  : null,
          borderBuilder:
              buttonState.borderBuilderEnabled
                  ? (MyoroTapStatusEnum tapStatusEnum) {
                    return MyoroButtonWidgetShowcaseBloc.borderBuilder(context, tapStatusEnum, buttonState);
                  }
                  : null,
          onTapDown: buttonState.onTapDownEnabled ? (_) => MyoroButtonWidgetShowcaseBloc.onTapDown(context) : null,
          onTapUp: buttonState.onTapUpEnabled ? (_) => MyoroButtonWidgetShowcaseBloc.onTapUp(context) : null,
        ),
        invert: iconTextButtonState.invert,
        spacing: iconTextButtonState.spacing,
        padding: iconTextButtonState.padding,
        contentColorBuilder:
            iconTextButtonState.contentColorBuilderEnabled
                ? (MyoroTapStatusEnum tapStatusEnum) {
                  return _contentColorBuilder(tapStatusEnum, iconTextButtonState);
                }
                : null,
        iconConfiguration:
            iconTextButtonState.icon != null
                ? MyoroIconTextButtonIconConfiguration(
                  icon: iconTextButtonState.icon!,
                  size: iconTextButtonState.iconSize,
                )
                : null,
        textConfiguration:
            iconTextButtonState.text.isNotEmpty
                ? MyoroIconTextButtonTextConfiguration(
                  text: iconTextButtonState.text,
                  maxLines: iconTextButtonState.textMaxLines,
                  overflow: iconTextButtonState.textOverflow,
                  alignment: iconTextButtonState.textAlignment,
                  style: iconTextButtonState.textStyle,
                )
                : null,
      ),
    );
  }

  Color _contentColorBuilder(
    MyoroTapStatusEnum tapStatusEnum,
    MyoroIconTextButtonWidgetShowcaseState iconTextButtonState,
  ) {
    const Color transparent = MyoroColorDesignSystem.transparent;

    return switch (tapStatusEnum) {
      MyoroTapStatusEnum.idle => iconTextButtonState.idleContentColor ?? transparent,
      MyoroTapStatusEnum.hover => iconTextButtonState.hoverContentColor ?? transparent,
      MyoroTapStatusEnum.tap => iconTextButtonState.tapContentColor ?? transparent,
    };
  }
}

final class _InvertOption extends StatelessWidget {
  const _InvertOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroIconTextButtonWidgetShowcaseBloc>();

    return WidgetShowcaseOption(
      labelConfiguration: WidgetShowcaseOptionLabelConfiguration(
        label: 'Invert icon and text.',
        onChanged: (bool value) => _onChanged(bloc, value),
      ),
    );
  }

  void _onChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, bool value) {
    bloc.add(SetInvertEvent(value));
  }
}

final class _SpacingOption extends StatelessWidget {
  const _SpacingOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroIconTextButtonWidgetShowcaseBloc>();

    return WidgetShowcaseOption(
      labelConfiguration: const WidgetShowcaseOptionLabelConfiguration(label: 'Spacing between icon and text.'),
      child: MyoroSlider(
        configuration: MyoroSliderConfiguration(
          onChanged: (double value) => _onChanged(bloc, value),
          footerIndicatorTextBuilder: _footerIndicatorTextBuilder,
        ),
      ),
    );
  }

  void _onChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, double value) {
    bloc.add(SetSpacingEvent(value));
  }

  String _footerIndicatorTextBuilder(double value) {
    return value.toString();
  }
}

final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroIconTextButtonWidgetShowcaseBloc>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        allConfiguration: PaddingWidgetShowcaseOptionAllConfiguration(
          topOnChanged: (value) => _topOnChanged(bloc, value),
          bottomOnChanged: (value) => _bottomOnChanged(bloc, value),
          leftOnChanged: (value) => _leftOnChanged(bloc, value),
          rightOnChanged: (value) => _rightOnChanged(bloc, value),
        ),
      ),
    );
  }

  void _topOnChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, double value) {
    bloc.add(SetPaddingEvent(top: value));
  }

  void _bottomOnChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, double value) {
    bloc.add(SetPaddingEvent(bottom: value));
  }

  void _leftOnChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, double value) {
    bloc.add(SetPaddingEvent(left: value));
  }

  void _rightOnChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, double value) {
    bloc.add(SetPaddingEvent(right: value));
  }
}

final class _ContentColorBuilderOption extends StatelessWidget {
  const _ContentColorBuilderOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroIconTextButtonWidgetShowcaseBloc>();

    return BlocBuilder<MyoroIconTextButtonWidgetShowcaseBloc, MyoroIconTextButtonWidgetShowcaseState>(
      buildWhen: _buildWhen,
      builder: (_, state) => _builder(bloc, state),
    );
  }

  bool _buildWhen(MyoroIconTextButtonWidgetShowcaseState previous, MyoroIconTextButtonWidgetShowcaseState current) {
    return previous.contentColorBuilderEnabled != current.contentColorBuilderEnabled;
  }

  Widget _builder(MyoroIconTextButtonWidgetShowcaseBloc bloc, MyoroIconTextButtonWidgetShowcaseState state) {
    return MyoroTapStatusEnumWidgetShowcaseOption(
      configuration: MyoroTapStatusEnumWidgetShowcaseOptionConfiguration(
        labelConfiguration: WidgetShowcaseOptionLabelConfiguration(
          label: 'Content color builder',
          initialValue: state.contentColorBuilderEnabled,
          onChanged: (bool enabled) => _checkboxOnChanged(bloc, enabled),
        ),
        idleColorOnChanged: (Color? color) => _idleColorOnChanged(bloc, color),
        hoverColorOnChanged: (Color? color) => _hoverColorOnChanged(bloc, color),
        tapColorOnChanged: (Color? color) => _tapColorOnChanged(bloc, color),
      ),
    );
  }

  void _checkboxOnChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, bool enabled) {
    bloc.add(SetContentColorBuilderEnabledEvent(enabled));
  }

  void _idleColorOnChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, Color? color) {
    bloc.add(SetIdleContentColorEvent(color));
  }

  void _hoverColorOnChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, Color? color) {
    bloc.add(SetHoverContentColorEvent(color));
  }

  void _tapColorOnChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, Color? color) {
    bloc.add(SetHoverContentColorEvent(color));
  }
}

final class _IconOption extends StatelessWidget {
  const _IconOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroIconTextButtonWidgetShowcaseBloc>();

    return IconWidgetShowcaseOption(onChanged: (IconData? icon) => _onChanged(bloc, icon));
  }

  void _onChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, IconData? icon) {
    bloc.add(SetIconEvent(icon));
  }
}

final class _IconSizeOption extends StatefulWidget {
  const _IconSizeOption();

  @override
  State<_IconSizeOption> createState() => _IconSizeOptionState();
}

final class _IconSizeOptionState extends State<_IconSizeOption> {
  late final MyoroIconTextButtonWidgetShowcaseBloc _bloc;

  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bloc = context.resolveBloc<MyoroIconTextButtonWidgetShowcaseBloc>();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroIconTextButtonWidgetShowcaseBloc, MyoroIconTextButtonWidgetShowcaseState>(
      buildWhen: _buildWhen,
      builder: _builder,
    );
  }

  bool _buildWhen(MyoroIconTextButtonWidgetShowcaseState previous, MyoroIconTextButtonWidgetShowcaseState current) {
    return previous.iconSize != current.iconSize;
  }

  Widget _builder(_, MyoroIconTextButtonWidgetShowcaseState state) {
    return WidgetShowcaseOption(
      labelConfiguration: WidgetShowcaseOptionLabelConfiguration(
        label: 'Icon size',
        initialValue: state.iconSize != null,
        onChanged: _enabledOnChanged,
      ),
      child: MyoroInput.number(
        min: 10,
        max: 200,
        decimalPlaces: 2,
        configuration: MyoroInputConfiguration(controller: _controller),
      ),
    );
  }

  void _enabledOnChanged(bool enabled) {
    _bloc.add(SetIconSizeEvent(enabled ? _iconSize : null));
  }

  double get _iconSize => double.parse(_controller.text);
}

final class _TextOption extends StatelessWidget {
  const _TextOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroIconTextButtonWidgetShowcaseBloc>();

    return WidgetShowcaseOption(
      labelConfiguration: const WidgetShowcaseOptionLabelConfiguration(label: 'Text'),
      child: MyoroInput(configuration: MyoroInputConfiguration(onChanged: (String text) => _onChanged(bloc, text))),
    );
  }

  void _onChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, String text) {
    bloc.add(SetTextEvent(text));
  }
}

final class _TextMaxLinesOption extends StatelessWidget {
  const _TextMaxLinesOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroIconTextButtonWidgetShowcaseBloc>();

    return WidgetShowcaseOption(
      labelConfiguration: const WidgetShowcaseOptionLabelConfiguration(label: 'Text max lines'),
      child: MyoroInput.number(
        min: 1,
        max: 10,
        configuration: MyoroInputConfiguration(onChanged: (String text) => _onChanged(bloc, text)),
      ),
    );
  }

  void _onChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, String text) {
    bloc.add(SetTextMaxLinesEvent(int.parse(text)));
  }
}

final class _TextOverflowOption extends StatelessWidget {
  const _TextOverflowOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroIconTextButtonWidgetShowcaseBloc>();

    return TextOverflowWidgetShowcaseOption(
      dropdownConfiguration: WidgetShowcaseOptionDropdownConfiguration(
        initiallySelectedItem: MyoroIconTextButtonTextConfiguration.overflowDefaultValue,
        allowItemClearing: false,
        onChanged: (TextOverflow? overflow) => _onChanged(bloc, overflow!),
      ),
    );
  }

  void _onChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, TextOverflow overflow) {
    bloc.add(SetTextOverflowEvent(overflow));
  }
}

final class _TextAlignmentOption extends StatelessWidget {
  const _TextAlignmentOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroIconTextButtonWidgetShowcaseBloc>();

    return BlocBuilder<MyoroIconTextButtonWidgetShowcaseBloc, MyoroIconTextButtonWidgetShowcaseState>(
      builder: (_, state) => _builder(bloc, state),
    );
  }

  Widget _builder(MyoroIconTextButtonWidgetShowcaseBloc bloc, MyoroIconTextButtonWidgetShowcaseState state) {
    return TextAlignWidgetShowcaseOption(
      labelConfiguration: const WidgetShowcaseOptionLabelConfiguration(label: 'Text alignment'),
      dropdownConfiguration: WidgetShowcaseOptionDropdownConfiguration(
        initiallySelectedItem: state.textAlignment,
        allowItemClearing: false,
        onChanged: (TextAlign? textAlign) => _onChanged(bloc, textAlign!),
      ),
    );
  }

  void _onChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, TextAlign textAlign) {
    bloc.add(SetTextAlignmentEvent(textAlign));
  }
}

final class _TextStyleOption extends StatelessWidget {
  const _TextStyleOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroIconTextButtonWidgetShowcaseBloc>();

    return TextStyleWidgetShowcaseOption(
      dropdownConfiguration: WidgetShowcaseOptionDropdownConfiguration(
        onChanged: (TextStyle? textStyle) => _onChanged(bloc, textStyle),
      ),
    );
  }

  void _onChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, TextStyle? textStyle) {
    bloc.add(SetTextStyleEvent(textStyle));
  }
}
