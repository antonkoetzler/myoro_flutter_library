import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_input_widget_showcase_bloc/myoro_input_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroInput].
final class MyoroInputWidgetShowcase extends StatelessWidget {
  const MyoroInputWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroInputWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _FormatterOption(),
          _ConfigurationOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroInputWidgetShowcaseBloc, MyoroInputWidgetShowcaseState>(
      builder: (_, MyoroInputWidgetShowcaseState state) {
        final configuration = state.configuration;

        return switch (state.typeEnum) {
          MyoroInputWidgetShowcaseEnum.none => MyoroInput(configuration: configuration),
          MyoroInputWidgetShowcaseEnum.date => MyoroInput.date(configuration: configuration),
          MyoroInputWidgetShowcaseEnum.number => MyoroInput.number(configuration: configuration),
        };
      },
    );
  }
}

final class _FormatterOption extends StatefulWidget {
  const _FormatterOption();

  @override
  State<_FormatterOption> createState() => _FormatterOptionState();
}

final class _FormatterOptionState extends State<_FormatterOption> {
  late final _bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();
  late final _controller = MyoroDropdownController<MyoroInputWidgetShowcaseEnum>([_bloc.state.typeEnum]);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroDropdown<MyoroInputWidgetShowcaseEnum>(
      label: 'Formatter (named constructors):',
      dataConfiguration: const MyoroDataConfiguration(staticItems: MyoroInputWidgetShowcaseEnum.values),
      itemBuilder: (MyoroInputWidgetShowcaseEnum item) => MyoroMenuItem(text: item.title),
      itemLabelBuilder: (MyoroInputWidgetShowcaseEnum item) => item.title,
      showClearTextButton: false,
      onChangedItems: (List<MyoroInputWidgetShowcaseEnum> items) => _bloc.add(SetFormatterEvent(items.first)),
    );
  }
}

final class _ConfigurationOption extends StatelessWidget {
  const _ConfigurationOption();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '[MyoroInputConfiguration]',
          style: context.resolveThemeExtension<MyoroInputWidgetShowcaseThemeExtension>().configurationOptionTextStyle,
        ),
        const _InputStyleOption(),
      ],
    );
  }
}

final class _InputStyleOption extends StatefulWidget {
  const _InputStyleOption();

  @override
  State<_InputStyleOption> createState() => _InputStyleOptionState();
}

final class _InputStyleOptionState extends State<_InputStyleOption> {
  late final _bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();
  late final _controller = MyoroDropdownController<MyoroInputStyleEnum>([_bloc.state.configuration.inputStyle]);

  String _getStyleName(MyoroInputStyleEnum item) {
    return switch (item) {
      MyoroInputStyleEnum.outlined => 'Outlined',
      MyoroInputStyleEnum.underlined => 'Underlined',
    };
  }

  void _onChangedItems(List<MyoroInputStyleEnum> items) {
    _bloc.add(
      SetConfigurationEvent(
        _bloc.state.configuration.copyWith(
          inputStyle: items.first,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroDropdown<MyoroInputStyleEnum>(
      label: '[inputStyle]',
      dataConfiguration: const MyoroDataConfiguration(staticItems: MyoroInputStyleEnum.values),
      itemBuilder: (MyoroInputStyleEnum item) => MyoroMenuItem(text: _getStyleName(item)),
      itemLabelBuilder: _getStyleName,
      showClearTextButton: false,
      onChangedItems: _onChangedItems,
    );
  }
}
