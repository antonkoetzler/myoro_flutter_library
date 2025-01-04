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

  void _checkboxOnChanged(BuildContext context, bool enabled) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        message: 'Input ${enabled ? 'enabled' : 'disabled'}',
      ),
    );
  }

  void _onFieldSubmitted(BuildContext context) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        message: 'Input submitted (enter pressed)',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyoroForm(
      builder: (_, __, MyoroFormController controller) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: BlocBuilder<MyoroInputWidgetShowcaseBloc, MyoroInputWidgetShowcaseState>(
                builder: (_, MyoroInputWidgetShowcaseState state) {
                  final configuration = MyoroInputConfiguration(
                    inputStyle: state.inputStyle,
                    textAlign: state.textAlign,
                    inputTextStyle: state.inputTextStyle,
                    label: state.label,
                    placeholder: state.placeholder,
                    labelTextStyle: state.labelTextStyle,
                    suffix: state.suffixEnabled ? const _SuffixWidget() : null,
                    enabled: state.enabled,
                    readOnly: state.readOnly,
                    showClearTextButton: state.showClearTextButton,
                    checkboxOnChanged: state.checkboxOnChangedEnabled ? (bool enabled, _) => _checkboxOnChanged(context, enabled) : null,
                    validation: (_) => 'Valiation error!',
                    onFieldSubmitted: (_) => _onFieldSubmitted(context),
                  );

                  return switch (state.typeEnum) {
                    MyoroInputWidgetShowcaseEnum.none => MyoroInput(configuration: configuration),
                    MyoroInputWidgetShowcaseEnum.date => MyoroInput.date(configuration: configuration),
                    MyoroInputWidgetShowcaseEnum.number => MyoroInput.number(configuration: configuration),
                  };
                },
              ),
            ),
            const SizedBox(height: 10),
            IntrinsicWidth(
              child: MyoroIconTextHoverButton(
                text: 'Click to show a validation error',
                configuration: const MyoroHoverButtonConfiguration(bordered: true),
                onPressed: () => controller.finish(),
              ),
            ),
          ],
        );
      },
    );
  }
}

final class _SuffixWidget extends StatelessWidget {
  const _SuffixWidget();

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextHoverButton(
      icon: context.resolveThemeExtension<MyoroInputWidgetShowcaseThemeExtension>().suffixWidgetIcon,
      iconSize: 30,
      configuration: const MyoroHoverButtonConfiguration(bordered: true),
      onPressed: () {},
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
  late final _controller = MyoroSingularDropdownController<MyoroInputWidgetShowcaseEnum>(_bloc.state.typeEnum);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<MyoroInputWidgetShowcaseEnum>(
      configuration: MyoroDropdownConfiguration(
        label: 'Formatter (named constructors):',
        dataConfiguration: MyoroDataConfiguration(staticItems: MyoroInputWidgetShowcaseEnum.values),
        itemBuilder: (MyoroInputWidgetShowcaseEnum item) => MyoroMenuItem(text: item.title),
        itemLabelBuilder: (MyoroInputWidgetShowcaseEnum item) => item.title,
        allowItemClearing: false,
      ),
      onChanged: (MyoroInputWidgetShowcaseEnum? item) => _bloc.add(SetFormatterEvent(item!)),
    );
  }
}

final class _ConfigurationOption extends StatelessWidget {
  const _ConfigurationOption();

  @override
  Widget build(BuildContext context) {
    final spacing = SizedBox(height: context.resolveThemeExtension<MyoroInputWidgetShowcaseThemeExtension>().configurationOptionSpacing);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '[MyoroInputConfiguration]',
          style: context.resolveThemeExtension<MyoroInputWidgetShowcaseThemeExtension>().configurationOptionTextStyle,
        ),
        spacing,
        const _InputStyleOption(),
        spacing,
        const _TextAlignOption(),
        spacing,
        const _InputTextStyleOption(),
        spacing,
        const _LabelOption(),
        spacing,
        const _PlaceholderOption(),
        spacing,
        const _LabelTextStyleOption(),
        spacing,
        const _SuffixOption(),
        spacing,
        const _EnabledOption(),
        spacing,
        const _ReadOnlyOption(),
        spacing,
        const _ShowClearTextButtonOption(),
        spacing,
        const _CheckboxOnChangedOption(),
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
  late final _controller = MyoroSingularDropdownController<MyoroInputStyleEnum>(_bloc.state.inputStyle);

  String _getStyleName(MyoroInputStyleEnum item) {
    return switch (item) {
      MyoroInputStyleEnum.outlined => 'Outlined',
      MyoroInputStyleEnum.underlined => 'Underlined',
    };
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<MyoroInputStyleEnum>(
      configuration: MyoroDropdownConfiguration(
        label: '[inputStyle]',
        dataConfiguration: MyoroDataConfiguration(staticItems: MyoroInputStyleEnum.values),
        itemBuilder: (MyoroInputStyleEnum item) => MyoroMenuItem(text: _getStyleName(item)),
        itemLabelBuilder: _getStyleName,
        allowItemClearing: false,
      ),
      onChanged: (MyoroInputStyleEnum? item) => _bloc.add(SetInputStyleEvent(item!)),
    );
  }
}

final class _TextAlignOption extends StatefulWidget {
  const _TextAlignOption();

  @override
  State<_TextAlignOption> createState() => _TextAlignOptionState();
}

final class _TextAlignOptionState extends State<_TextAlignOption> {
  late final _bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();
  late final _controller = MyoroSingularDropdownController<TextAlign>(_bloc.state.textAlign);

  String _getTextAlignName(TextAlign item) {
    return switch (item) {
      TextAlign.start => '[TextAlign.start]',
      TextAlign.end => '[TextAlign.end]',
      TextAlign.left => '[TextAlign.left]',
      TextAlign.right => '[TextAlign.right]',
      TextAlign.center => '[TextAlign.center]',
      TextAlign.justify => '[TextAlign.justify]',
    };
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<TextAlign>(
      configuration: MyoroDropdownConfiguration(
        label: '[textAlign]',
        allowItemClearing: false,
        dataConfiguration: MyoroDataConfiguration(staticItems: TextAlign.values),
        itemBuilder: (TextAlign item) => MyoroMenuItem(text: _getTextAlignName(item)),
        itemLabelBuilder: _getTextAlignName,
      ),
      onChanged: (TextAlign? item) => _bloc.add(SetTextAlignEvent(item)),
      controller: _controller,
    );
  }
}

final class _InputTextStyleOption extends StatelessWidget {
  const _InputTextStyleOption();

  @override
  Widget build(BuildContext context) {
    final typographyInstance = MyoroTypographyTheme.instance;
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroSingularDropdown<TextStyle>(
      configuration: MyoroDropdownConfiguration(
        label: '[inputTextStyle]',
        dataConfiguration: MyoroDataConfiguration(staticItems: typographyInstance.allTextStyles),
        itemBuilder: (TextStyle item) => MyoroMenuItem(text: typographyInstance.getTextStyleName(item)),
        itemLabelBuilder: typographyInstance.getTextStyleName,
      ),
      onChanged: (TextStyle? item) => bloc.add(SetInputTextStyleEvent(item)),
    );
  }
}

final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  void _checkboxOnChanged(MyoroInputWidgetShowcaseBloc bloc, bool enabled, String text) {
    bloc.add(
      SetLabelEvent(
        enabled ? text : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: '[label]',
        inputStyle: context.resolveThemeExtension<MyoroInputWidgetShowcaseThemeExtension>().inputStyle,
        onChanged: (String text) => bloc.add(SetLabelEvent(text)),
        checkboxOnChanged: (bool enabled, String text) => _checkboxOnChanged(bloc, enabled, text),
      ),
    );
  }
}

final class _PlaceholderOption extends StatelessWidget {
  const _PlaceholderOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: '[label]',
        inputStyle: context.resolveThemeExtension<MyoroInputWidgetShowcaseThemeExtension>().inputStyle,
        onChanged: (String text) => bloc.add(SetPlaceholderEvent(text)),
        checkboxOnChanged: (bool enabled, String text) => bloc.add(SetPlaceholderEvent(enabled ? text : null)),
      ),
    );
  }
}

final class _LabelTextStyleOption extends StatelessWidget {
  const _LabelTextStyleOption();

  @override
  Widget build(BuildContext context) {
    final typographyInstance = MyoroTypographyTheme.instance;
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroSingularDropdown<TextStyle>(
      configuration: MyoroDropdownConfiguration(
        label: '[labelTextStyle]',
        dataConfiguration: MyoroDataConfiguration(staticItems: typographyInstance.allTextStyles),
        itemBuilder: (TextStyle item) => MyoroMenuItem(text: typographyInstance.getTextStyleName(item)),
        itemLabelBuilder: typographyInstance.getTextStyleName,
      ),
      onChanged: (TextStyle? item) => bloc.add(SetLabelTextStyleEvent(item)),
      checkboxOnChanged: (bool enabled, TextStyle? item) => bloc.add(SetLabelTextStyleEvent(enabled ? item : null)),
    );
  }
}

final class _SuffixOption extends StatelessWidget {
  const _SuffixOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[suffix] enabled?',
      initialValue: bloc.state.suffixEnabled,
      onChanged: (bool value) => bloc.add(SetSuffixEnabledEvent(value)),
    );
  }
}

final class _EnabledOption extends StatelessWidget {
  const _EnabledOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[enabled]',
      initialValue: bloc.state.enabled,
      onChanged: (bool value) => bloc.add(SetEnabledEvent(value)),
    );
  }
}

final class _ReadOnlyOption extends StatelessWidget {
  const _ReadOnlyOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[readOnly]',
      initialValue: bloc.state.readOnly,
      onChanged: (bool value) => bloc.add(SetReadOnlyEvent(value)),
    );
  }
}

final class _ShowClearTextButtonOption extends StatelessWidget {
  const _ShowClearTextButtonOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[showClearTextButton]',
      initialValue: bloc.state.showClearTextButton,
      onChanged: (bool value) => bloc.add(SetShowClearTextButtonEvent(value)),
    );
  }
}

final class _CheckboxOnChangedOption extends StatelessWidget {
  const _CheckboxOnChangedOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[checkboxOnChanged] not null?',
      initialValue: bloc.state.checkboxOnChangedEnabled,
      onChanged: (bool value) => bloc.add(SetCheckboxOnChangedEnabledEvent(value)),
    );
  }
}
