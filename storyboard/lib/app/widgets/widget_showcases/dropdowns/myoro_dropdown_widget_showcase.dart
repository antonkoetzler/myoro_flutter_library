import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_dropdown_widget_showcase_bloc/myoro_dropdown_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

typedef _Item = (Color color, String text);

/// Widget showcase for [MyoroDropdown].
final class MyoroDropdownWidgetShowcase extends StatefulWidget {
  const MyoroDropdownWidgetShowcase({super.key});

  @override
  State<MyoroDropdownWidgetShowcase> createState() => _MyoroDropdownWidgetShowcaseState();
}

final class _MyoroDropdownWidgetShowcaseState extends State<MyoroDropdownWidgetShowcase> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroDropdownWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _LabelOption(),
        ],
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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroDropdownWidgetShowcaseBloc, MyoroDropdownWidgetShowcaseState>(
      builder: (_, MyoroDropdownWidgetShowcaseState state) {
        return MyoroDropdown<_Item>(
          label: state.label,
          dataConfiguration: _dataConfiguration,
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

    return SizedBox(
      width: 191,
      child: MyoroInput(
        configuration: MyoroInputConfiguration(
          label: '[MyoroDropdown.label]',
          inputStyle: context.resolveThemeExtension<MyoroDropdownWidgetShowcaseThemeExtension>().inputStyle,
          checkboxOnChanged: (bool enabled, String text) => _checkboxOnChanged(bloc, enabled, text),
          onChanged: (String text) => bloc.add(SetLabelEvent(text)),
        ),
      ),
    );
  }
}
