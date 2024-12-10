import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroHoverButton].
final class MyoroHoverButtonWidgetShowcase extends StatelessWidget {
  const MyoroHoverButtonWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroHoverButtonWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _OnPressedEnabledCheckbox(),
          _PrimaryColorDropdown(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  void _onPressed(BuildContext context) {
    context.showSnackBar(
      snackBar: const MyoroSnackBar(
        message: 'MyoroHoverButton pressed!',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroHoverButtonWidgetShowcaseThemeExtension>();

    return BlocBuilder<MyoroHoverButtonWidgetShowcaseBloc, MyoroHoverButtonWidgetShowcaseState>(
      builder: (_, MyoroHoverButtonWidgetShowcaseState state) {
        return MyoroHoverButton(
          onPressed: state.onPressedEnabled ? () => _onPressed(context) : null,
          builder: (bool hovered, Color primaryColor, Color onPrimaryColor) {
            return Padding(
              padding: themeExtension.widgetContentPadding,
              child: Text(
                'Click me!',
                style: themeExtension.widgetContentTextStyle.withColor(
                  hovered ? primaryColor : onPrimaryColor,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

final class _OnPressedEnabledCheckbox extends StatelessWidget {
  const _OnPressedEnabledCheckbox();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroHoverButtonWidgetShowcaseBloc>();

    return MyoroCheckbox(
      initialValue: bloc.state.onPressedEnabled,
      label: '[onPressed] not [null]?',
      onChanged: (_) => bloc.add(const ToggleOnPressedEnabledEvent()),
    );
  }
}

final class _PrimaryColorDropdown extends StatelessWidget {
  const _PrimaryColorDropdown();

  @override
  Widget build(BuildContext context) => const _ColorDropdown('[configuration.primaryColor]');
}

final class _ColorDropdown extends StatelessWidget {
  final String _label;

  const _ColorDropdown(this._label);

  MyoroMenuItem _itemBuilder(Color color) {
    return MyoroMenuItem(
      itemBuilder: (bool hovered, Color primaryColor, Color onPrimaryColor) {
        return _ColorDropdownItem(
          color,
          hovered,
          onPrimaryColor,
        );
      },
    );
  }

  String _itemLabelBuilder(Color color) => '#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}';

  @override
  Widget build(BuildContext context) {
    return MyoroDropdown<Color>(
      label: _label,
      dataConfiguration: const MyoroDataConfiguration(staticItems: kMyoroTestColors),
      itemBuilder: _itemBuilder,
      itemLabelBuilder: _itemLabelBuilder,
    );
  }
}

final class _ColorDropdownItem extends StatelessWidget {
  final Color _color;
  final bool _hovered;
  final Color _onPrimaryColor;

  const _ColorDropdownItem(
    this._color,
    this._hovered,
    this._onPrimaryColor,
  );

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroHoverButtonWidgetShowcaseThemeExtension>();
    final colorSize = themeExtension.colorDropdownItemColorSize;

    return Padding(
      padding: themeExtension.colorDropdownItemPadding,
      child: Row(
        children: [
          Container(
            width: colorSize.width,
            height: colorSize.height,
            color: _color,
          ),
          SizedBox(width: themeExtension.colorDropdownItemSpacing),
          Expanded(
            child: Text(
              _color.value.toRadixString(16).padLeft(8, '0').toUpperCase(),
              style: themeExtension.colorDropdownItemColorTextStyle.withColor(
                _hovered ? themeExtension.colorDropdownitemPrimaryColor : _onPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
