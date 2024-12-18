import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_dropdown_widget_showcase_bloc/myoro_dropdown_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

typedef _Item = (Color color, String text);

/// Widget showcase for [MyoroDropdown].
final class MyoroDropdownWidgetShowcase extends StatelessWidget {
  const MyoroDropdownWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroDropdownWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _LabelOption(),
          _LabelTextStyleOption(),
          _EnabledOption(),
          _EnableMultiSelectionOption(),
          _ShowClearTextButtonOption(),
          _SearchCallbackOption(),
          _CheckboxOnChangedOption(),
        ],
        widgetOptionsWidth: 345,
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  MyoroDataConfiguration<_Item> get _dataConfiguration {
    return MyoroDataConfiguration(
      staticItems: List.generate(
        faker.randomGenerator.integer(50),
        (_) => (
          kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
          faker.person.name(),
        ),
      ),
    );
  }

  MyoroMenuItem _itemBuilder(_Item item) {
    return MyoroMenuItem(
      itemBuilder: (bool hovered, Color primaryColor, Color onPrimaryColor) {
        return _DropdownItem(
          item,
          hovered,
          primaryColor,
          onPrimaryColor,
        );
      },
    );
  }

  List<_Item> _searchCallback(String query, List<_Item> items) {
    return items.where((_Item item) => item.$2.contains(query)).toList();
  }

  void _checkboxOnChanged(BuildContext context, bool enabled) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        message: enabled ? 'Dropdown enabled' : 'Dropdown disabled',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroDropdownWidgetShowcaseBloc, MyoroDropdownWidgetShowcaseState>(
      builder: (_, MyoroDropdownWidgetShowcaseState state) {
        return MyoroDropdown<_Item>(
          label: state.label,
          labelTextStyle: state.labelTextStyle,
          enabled: state.enabled,
          enableMultiSelection: state.enableMultiSelection,
          showClearTextButton: state.showClearTextButton,
          dataConfiguration: _dataConfiguration,
          searchCallback: state.searchCallbackEnabled ? _searchCallback : null,
          checkboxOnChanged: state.checkboxOnChangedEnabled ? (bool enabled, _) => _checkboxOnChanged(context, enabled) : null,
          itemLabelBuilder: (_Item item) => item.$2,
          itemBuilder: _itemBuilder,
        );
      },
    );
  }
}

final class _DropdownItem extends StatelessWidget {
  final _Item _item;
  final bool _hovered;
  final Color _primaryColor;
  final Color _onPrimaryColor;

  const _DropdownItem(
    this._item,
    this._hovered,
    this._primaryColor,
    this._onPrimaryColor,
  );

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownWidgetShowcaseThemeExtension>();

    return Row(
      children: [
        Container(
          width: themeExtension.dropdownItemColorSize,
          height: themeExtension.dropdownItemColorSize,
          color: _item.$1,
        ),
        SizedBox(width: themeExtension.dropdownItemSpacing),
        Expanded(
          child: Text(
            _item.$2,
            style: themeExtension.dropdownItemTextStyle.withColor(
              _hovered ? _primaryColor : _onPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}

final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  void _checkboxOnChanged(MyoroDropdownWidgetShowcaseBloc bloc, bool enabled, String text) {
    bloc.add(
      SetLabelEvent(
        enabled ? text : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcaseBloc>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: '[MyoroDropdown.label]',
        enabled: false,
        inputStyle: context.resolveThemeExtension<MyoroDropdownWidgetShowcaseThemeExtension>().inputStyle,
        checkboxOnChanged: (bool enabled, String text) => _checkboxOnChanged(bloc, enabled, text),
        onChanged: (String text) => bloc.add(SetLabelEvent(text)),
      ),
    );
  }
}

final class _LabelTextStyleOption extends StatelessWidget {
  const _LabelTextStyleOption();

  MyoroDataConfiguration<TextStyle> _getDataConfiguration(MyoroTypographyTheme instance) {
    return MyoroDataConfiguration(
      staticItems: MyoroTypographyTheme.instance.allTextStyles,
    );
  }

  void _checkboxOnChanged(MyoroDropdownWidgetShowcaseBloc bloc, bool enabled, List<TextStyle> textStyles) {
    bloc.add(
      SetLabelTextStyleEvent(
        enabled && textStyles.isNotEmpty ? textStyles.first : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final instance = MyoroTypographyTheme.instance;
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcaseBloc>();

    return MyoroDropdown<TextStyle>(
      label: '[MyoroDropdown.labelTextStyle]',
      enabled: false,
      dataConfiguration: _getDataConfiguration(instance),
      itemBuilder: (TextStyle textStyle) => MyoroMenuItem(text: instance.getTextStyleName(textStyle)),
      itemLabelBuilder: (TextStyle textStyle) => instance.getTextStyleName(textStyle),
      checkboxOnChanged: (bool enabled, List<TextStyle> textStyles) => _checkboxOnChanged(bloc, enabled, textStyles),
      onChangedItems: (List<TextStyle> textStyles) => bloc.add(SetLabelTextStyleEvent(textStyles.isNotEmpty ? textStyles.first : null)),
    );
  }
}

final class _EnabledOption extends StatelessWidget {
  const _EnabledOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroDropdown.enabled]',
      initialValue: bloc.state.enabled,
      onChanged: (bool value) => bloc.add(SetEnabledEvent(value)),
    );
  }
}

final class _EnableMultiSelectionOption extends StatelessWidget {
  const _EnableMultiSelectionOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroDropdown.enableMultiSelection]',
      initialValue: bloc.state.enableMultiSelection,
      onChanged: (bool value) => bloc.add(SetEnableMultiSelectionEvent(value)),
    );
  }
}

final class _ShowClearTextButtonOption extends StatelessWidget {
  const _ShowClearTextButtonOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroDropdown.showClearTextButton]',
      initialValue: bloc.state.showClearTextButton,
      onChanged: (bool value) => bloc.add(SetShowClearTextButtonEvent(value)),
    );
  }
}

final class _SearchCallbackOption extends StatelessWidget {
  const _SearchCallbackOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroDropdown.searchCallback] enabled?',
      initialValue: bloc.state.searchCallbackEnabled,
      onChanged: (bool value) => bloc.add(SetSearchCallbackEnabledEvent(value)),
    );
  }
}

final class _CheckboxOnChangedOption extends StatelessWidget {
  const _CheckboxOnChangedOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroDropdown.checkboxOnChanged] enabled?',
      initialValue: bloc.state.checkboxOnChangedEnabled,
      onChanged: (bool value) => bloc.add(SetCheckboxOnChangedEnabledEvent(value)),
    );
  }
}
