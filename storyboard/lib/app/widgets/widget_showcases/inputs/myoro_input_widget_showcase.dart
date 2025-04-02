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
      child: const WidgetShowcase(widget: _Widget(), widgetOptions: [_FormatterOption(), _ConfigurationOption()]),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  void _checkboxOnChanged(BuildContext context, bool enabled) {
    context.showSnackBar(snackBar: MyoroSnackBar(message: 'Input ${enabled ? 'enabled' : 'disabled'}'));
  }

  void _onFieldSubmitted(BuildContext context) {
    context.showSnackBar(snackBar: MyoroSnackBar(message: 'Input submitted (enter pressed)'));
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

final class _FormatterOption extends StatelessWidget {
  const _FormatterOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroSingularDropdown<MyoroInputWidgetShowcaseEnum>(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Formatter (named constructors):',
        dataConfiguration: MyoroDataConfiguration(staticItems: MyoroInputWidgetShowcaseEnum.values),
        menuItemBuilder: (MyoroInputWidgetShowcaseEnum item) => MyoroMenuItem(text: item.title),
        selectedItemBuilder: (MyoroInputWidgetShowcaseEnum item) => item.title,
        allowItemClearing: false,
        initiallySelectedItem: bloc.state.typeEnum,
        onChanged: (MyoroInputWidgetShowcaseEnum? item) => bloc.add(SetFormatterEvent(item!)),
      ),
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
        Text('[MyoroInputConfiguration]', style: context.resolveThemeExtension<MyoroInputWidgetShowcaseThemeExtension>().configurationOptionTextStyle),
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

final class _InputStyleOption extends StatelessWidget {
  const _InputStyleOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroSingularDropdown<MyoroInputStyleEnum>(
      configuration: MyoroSingularDropdownConfiguration(
        label: '[inputStyle]',
        dataConfiguration: MyoroDataConfiguration(staticItems: MyoroInputStyleEnum.values),
        menuItemBuilder: (MyoroInputStyleEnum item) => MyoroMenuItem(text: _getStyleName(context, item)),
        selectedItemBuilder: (MyoroInputStyleEnum item) => _getStyleName(context, item),
        allowItemClearing: false,
        initiallySelectedItem: bloc.state.inputStyle,
        onChanged: (MyoroInputStyleEnum? item) => bloc.add(SetInputStyleEvent(item!)),
      ),
    );
  }

  String _getStyleName(BuildContext context, MyoroInputStyleEnum item) {
    return switch (item) {
      MyoroInputStyleEnum.outlined => 'Outlined',
      MyoroInputStyleEnum.underlined => 'Underlined',
    };
  }
}

final class _TextAlignOption extends StatelessWidget {
  const _TextAlignOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroSingularDropdown<TextAlign>(
      configuration: MyoroSingularDropdownConfiguration(
        label: '[textAlign]',
        allowItemClearing: false,
        dataConfiguration: MyoroDataConfiguration(staticItems: TextAlign.values),
        menuItemBuilder: (TextAlign item) => MyoroMenuItem(text: _getTextAlignName(item)),
        selectedItemBuilder: _getTextAlignName,
        initiallySelectedItem: bloc.state.textAlign,
        onChanged: (TextAlign? item) => bloc.add(SetTextAlignEvent(item)),
      ),
    );
  }

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
}

final class _InputTextStyleOption extends StatelessWidget {
  const _InputTextStyleOption();

  @override
  Widget build(BuildContext context) {
    final typographyInstance = MyoroTypographyDesignSystem.instance;
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroSingularDropdown<TextStyle>(
      configuration: MyoroSingularDropdownConfiguration(
        label: '[inputTextStyle]',
        dataConfiguration: MyoroDataConfiguration(staticItems: typographyInstance.allTextStyles),
        menuItemBuilder: (TextStyle item) => MyoroMenuItem(text: typographyInstance.getTextStyleName(item)),
        selectedItemBuilder: typographyInstance.getTextStyleName,
        onChanged: (TextStyle? item) => bloc.add(SetInputTextStyleEvent(item)),
      ),
    );
  }
}

final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  void _checkboxOnChanged(MyoroInputWidgetShowcaseBloc bloc, bool enabled, String text) {
    bloc.add(SetLabelEvent(enabled ? text : null));
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
        label: '[placeholder]',
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
    final typographyInstance = MyoroTypographyDesignSystem.instance;
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroSingularDropdown<TextStyle>(
      configuration: MyoroSingularDropdownConfiguration(
        label: '[labelTextStyle]',
        dataConfiguration: MyoroDataConfiguration(staticItems: typographyInstance.allTextStyles),
        menuItemBuilder: (TextStyle item) => MyoroMenuItem(text: typographyInstance.getTextStyleName(item)),
        selectedItemBuilder: typographyInstance.getTextStyleName,
        onChanged: (TextStyle? item) => bloc.add(SetLabelTextStyleEvent(item)),
        checkboxOnChanged: (bool enabled, TextStyle? item) => bloc.add(SetLabelTextStyleEvent(enabled ? item : null)),
      ),
    );
  }
}

final class _SuffixOption extends StatelessWidget {
  const _SuffixOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroCheckbox(label: '[suffix] enabled?', initialValue: bloc.state.suffixEnabled, onChanged: (bool value) => bloc.add(SetSuffixEnabledEvent(value)));
  }
}

final class _EnabledOption extends StatelessWidget {
  const _EnabledOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroCheckbox(label: '[enabled]', initialValue: bloc.state.enabled, onChanged: (bool value) => bloc.add(SetEnabledEvent(value)));
  }
}

final class _ReadOnlyOption extends StatelessWidget {
  const _ReadOnlyOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroInputWidgetShowcaseBloc>();

    return MyoroCheckbox(label: '[readOnly]', initialValue: bloc.state.readOnly, onChanged: (bool value) => bloc.add(SetReadOnlyEvent(value)));
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
