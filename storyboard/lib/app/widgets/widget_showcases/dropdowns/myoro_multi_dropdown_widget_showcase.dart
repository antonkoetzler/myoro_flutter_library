import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_dropdown_widget_showcases_bloc/myoro_dropdown_widget_showcases_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroMultiDropdown].
final class MyoroMultiDropdownWidgetShowcase extends StatelessWidget {
  const MyoroMultiDropdownWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroDropdownWidgetShowcasesBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _LabelOption(),
          _LabelTextStyleOption(),
          _EnabledOption(),
          _AllowItemClearingOption(),
          _MenuMaxHeightOption(),
          _MenuSearchCallbackEnabledOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  MyoroMenuItem _itemBuilder(String text) => MyoroMenuItem(text: text);
  String _itemLabelBuilder(String text) => text;

  List<String> _menuSearchCallback(String query, List<String> items) {
    query = query.toUpperCase();
    final List<String> result = [];
    for (final String item in items) {
      if (item.toUpperCase().contains(query)) {
        result.add(item);
      }
    }
    return result;
  }

  void _onChanged(BuildContext context, List<String> items) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        message: 'Amount of selected items: ${items.length}.',
      ),
    );
  }

  void _checkboxOnChanged(
    BuildContext context,
    bool enabled,
    List<String>? item,
  ) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        snackBarType:
            enabled
                ? MyoroSnackBarTypeEnum.success
                : MyoroSnackBarTypeEnum.error,
        message:
            'Dropdown ${enabled ? 'enabled' : 'disabled'}! ${item != null ? 'Selected item is $item' : 'No selected items'}.',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final dataConfiguration = MyoroDataConfiguration(
      staticItems: List.generate(
        faker.randomGenerator.integer(50),
        (_) => faker.lorem.word(),
      ),
    );

    return BlocBuilder<
      MyoroDropdownWidgetShowcasesBloc,
      MyoroDropdownWidgetShowcasesState
    >(
      builder: (_, MyoroDropdownWidgetShowcasesState state) {
        return MyoroMultiDropdown<String>(
          configuration: MyoroDropdownConfiguration<String>(
            label: state.label,
            labelTextStyle: state.labelTextStyle,
            enabled: state.enabled,
            allowItemClearing: state.allowItemClearing,
            menuMaxHeight: state.menuMaxHeight,
            dataConfiguration: dataConfiguration,
            itemBuilder: _itemBuilder,
            itemLabelBuilder: _itemLabelBuilder,
            menuSearchCallback:
                state.menuSearchCallbackEnabled ? _menuSearchCallback : null,
          ),
          onChanged: (List<String> items) => _onChanged(context, items),
          checkboxOnChanged:
              state.checkboxOnChangedEnabled
                  ? (bool enabled, List<String> items) =>
                      _checkboxOnChanged(context, enabled, items)
                  : null,
        );
      },
    );
  }
}

final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  @override
  Widget build(BuildContext context) {
    final bloc = MyoroDropdownWidgetShowcasesBloc();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'Label',
        onChanged: (String text) => bloc.add(SetLabelEvent(text)),
      ),
    );
  }
}

final class _LabelTextStyleOption extends StatelessWidget {
  const _LabelTextStyleOption();

  MyoroMenuItem _itemBuilder(
    MyoroTypographyTheme typographyInstance,
    TextStyle textStyle,
  ) {
    return MyoroMenuItem(text: typographyInstance.getTextStyleName(textStyle));
  }

  @override
  Widget build(BuildContext context) {
    final typographyInstance = MyoroTypographyTheme.instance;
    final dataConfiguration = MyoroDataConfiguration<TextStyle>(
      staticItems: typographyInstance.allTextStyles,
    );

    return MyoroSingularDropdown<TextStyle>(
      configuration: MyoroDropdownConfiguration(
        label: 'Label text style',
        dataConfiguration: dataConfiguration,
        itemBuilder:
            (TextStyle textStyle) =>
                _itemBuilder(typographyInstance, textStyle),
        itemLabelBuilder: typographyInstance.getTextStyleName,
      ),
      onChanged: (TextStyle? textStyle) {
        context.resolveBloc<MyoroDropdownWidgetShowcasesBloc>().add(
          SetLabelTextStyleEvent(textStyle),
        );
      },
    );
  }
}

final class _EnabledOption extends StatelessWidget {
  const _EnabledOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcasesBloc>();

    return MyoroCheckbox(
      label: 'Enabled?',
      initialValue: bloc.state.enabled,
      onChanged: (bool value) => bloc.add(SetEnabledEvent(value)),
    );
  }
}

final class _AllowItemClearingOption extends StatelessWidget {
  const _AllowItemClearingOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcasesBloc>();

    return MyoroCheckbox(
      label: 'Allow item clearing?',
      initialValue: bloc.state.allowItemClearing,
      onChanged: (bool value) => bloc.add(SetAllowItemClearingEvent(value)),
    );
  }
}

final class _MenuMaxHeightOption extends StatelessWidget {
  const _MenuMaxHeightOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcasesBloc>();

    return MyoroInput.number(
      configuration: MyoroInputConfiguration(
        label: 'Menu\'s max height',
        onChanged:
            (String text) =>
                bloc.add(SetMenuMaxHeightEvent(double.parse(text))),
        checkboxOnChanged:
            (bool enabled, String text) =>
                bloc.add(SetMenuMaxHeightEvent(double.parse(text))),
      ),
      max: 400,
    );
  }
}

final class _MenuSearchCallbackEnabledOption extends StatelessWidget {
  const _MenuSearchCallbackEnabledOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDropdownWidgetShowcasesBloc>();

    return MyoroCheckbox(
      label: 'Searching enabled?',
      initialValue: bloc.state.menuSearchCallbackEnabled,
      onChanged:
          (bool value) => bloc.add(SetMenuSearchCallbackEnabledEvent(value)),
    );
  }
}
