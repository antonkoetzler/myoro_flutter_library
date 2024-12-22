import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_menu_widget_showcase_bloc/myoro_menu_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

typedef _Item = (IconData icon, String text);

/// Widget showcase of [MyoroMenu].
final class MyoroMenuWidgetShowcase extends StatelessWidget {
  const MyoroMenuWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroMenuWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptionsWidth: 250,
        widgetOptions: [
          _ConstraintsOption(),
          _SearchCallbackOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  List<_Item> _searchCallback(String query, List<_Item> items) {
    return items.where((_Item item) => item.$2.contains(query)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroMenuWidgetShowcaseBloc, MyoroMenuWidgetShowcaseState>(
      builder: (_, MyoroMenuWidgetShowcaseState state) {
        return MyoroMenu<_Item>(
          constraints: BoxConstraints(
            minWidth: state.minWidth ?? 0,
            maxWidth: state.maxWidth ?? double.infinity,
            minHeight: state.minHeight ?? 0,
            maxHeight: state.maxHeight ?? double.infinity,
          ),
          searchCallback: state.searchCallbackEnabled ? _searchCallback : null,
          dataConfiguration: MyoroDataConfiguration(
            staticItems: List.generate(
              faker.randomGenerator.integer(50),
              (_) => (kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)], faker.person.name()),
            ),
          ),
          itemBuilder: (_Item item) => MyoroMenuItem(
            icon: item.$1,
            text: item.$2,
            onPressed: () {},
          ),
        );
      },
    );
  }
}

final class _ConstraintsOption extends StatelessWidget {
  const _ConstraintsOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroMenuWidgetShowcaseBloc>();
    final themeExtension = context.resolveThemeExtension<MyoroMenuWidgetShowcaseThemeExtension>();
    final spacing = themeExtension.constraintsOptionSpacing;

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: spacing,
      children: [
        Text(
          '[MyoroMenu.constraints]',
          style: themeExtension.headerTextStyle,
        ),
        Row(
          spacing: spacing,
          children: [
            Expanded(
              child: _NumberInput(
                label: 'Min width',
                onChanged: (String text) => bloc.add(SetMinWidthEvent(double.parse(text))),
                checkboxOnChanged: (bool enabled, String text) => bloc.add(SetMinWidthEvent(enabled ? double.parse(text) : null)),
              ),
            ),
            Expanded(
              child: _NumberInput(
                label: 'Max width',
                onChanged: (String text) => bloc.add(SetMaxWidthEvent(double.parse(text))),
                checkboxOnChanged: (bool enabled, String text) => bloc.add(SetMaxWidthEvent(enabled ? double.parse(text) : null)),
              ),
            ),
          ],
        ),
        Row(
          spacing: spacing,
          children: [
            Expanded(
              child: _NumberInput(
                label: 'Min height',
                onChanged: (String text) => bloc.add(SetMinHeightEvent(double.parse(text))),
                checkboxOnChanged: (bool enabled, String text) => bloc.add(SetMinHeightEvent(enabled ? double.parse(text) : null)),
              ),
            ),
            Expanded(
              child: _NumberInput(
                label: 'Max height',
                onChanged: (String text) => bloc.add(SetMaxHeightEvent(double.parse(text))),
                checkboxOnChanged: (bool enabled, String text) => bloc.add(SetMaxHeightEvent(enabled ? double.parse(text) : null)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

final class _SearchCallbackOption extends StatelessWidget {
  const _SearchCallbackOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroMenuWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroMenu.searchCallback] not null?',
      initialValue: bloc.state.searchCallbackEnabled,
      onChanged: (bool value) => bloc.add(SetSearchCallbackEnabledEvent(value)),
    );
  }
}

final class _NumberInput extends StatelessWidget {
  final String label;
  final MyoroInputOnChanged? onChanged;
  final MyoroInputCheckboxOnChanged? checkboxOnChanged;

  const _NumberInput({
    required this.label,
    this.onChanged,
    this.checkboxOnChanged,
  });

  @override
  Widget build(BuildContext context) {
    return MyoroInput.number(
      max: 500,
      configuration: MyoroInputConfiguration(
        label: label,
        enabled: false,
        inputStyle: context.resolveThemeExtension<MyoroMenuWidgetShowcaseThemeExtension>().inputStyle,
        onChanged: onChanged,
        checkboxOnChanged: checkboxOnChanged,
      ),
    );
  }
}
