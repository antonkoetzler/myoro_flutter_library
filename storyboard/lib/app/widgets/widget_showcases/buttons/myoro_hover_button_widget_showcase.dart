import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_hover_button_widget_showcase_bloc/myoro_hover_button_widget_showcase_bloc.dart';
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
          _PrimaryColorDropdown(),
          _OnPrimaryColorDropdown(),
          _IsHoveredCheckbox(),
          _BorderedCheckbox(),
          _BorderRadiusSlider(),
          _TooltipEnabledCheckbox(),
          _OnPressedEnabledCheckbox(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  void _onPressed(BuildContext context) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        message: 'MyoroHoverButton pressed!',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context
        .resolveThemeExtension<MyoroHoverButtonWidgetShowcaseThemeExtension>();

    return BlocBuilder<MyoroHoverButtonWidgetShowcaseBloc,
        MyoroHoverButtonWidgetShowcaseState>(
      builder: (_, MyoroHoverButtonWidgetShowcaseState state) {
        return MyoroHoverButton(
          configuration: MyoroHoverButtonConfiguration(
            primaryColor: state.primaryColor,
            onPrimaryColor: state.onPrimaryColor,
            isHovered: state.isHovered,
            bordered: state.bordered,
            borderRadius: state.borderRadius,
            tooltip:
                state.tooltipEnabled ? 'A description of the button!' : null,
          ),
          onPressed: state.onPressedEnabled ? () => _onPressed(context) : null,
          builder: (bool hovered, Color primaryColor, Color onPrimaryColor) {
            return Padding(
              padding: themeExtension.widgetContentPadding,
              child: Text(
                'Click me!',
                style: themeExtension.widgetContentTextStyle.withColor(
                  state.isHovered || hovered ? primaryColor : onPrimaryColor,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

final class _PrimaryColorDropdown extends StatelessWidget {
  const _PrimaryColorDropdown();

  @override
  Widget build(BuildContext context) {
    return _ColorDropdown(
      '[MyoroHoverButtonConfiguration.primaryColor]',
      (Color? color) => context
          .resolveBloc<MyoroHoverButtonWidgetShowcaseBloc>()
          .add(SetPrimaryColorEvent(color)),
    );
  }
}

final class _OnPrimaryColorDropdown extends StatelessWidget {
  const _OnPrimaryColorDropdown();

  @override
  Widget build(BuildContext context) {
    return _ColorDropdown(
      '[MyoroHoverButtonConfiguration.onPrimaryColor]',
      (Color? color) => context
          .resolveBloc<MyoroHoverButtonWidgetShowcaseBloc>()
          .add(SetOnPrimaryColorEvent(color)),
    );
  }
}

final class _IsHoveredCheckbox extends StatelessWidget {
  const _IsHoveredCheckbox();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroHoverButtonWidgetShowcaseBloc>();

    return MyoroCheckbox(
      initialValue: bloc.state.isHovered,
      label: '[MyoroHoverButtonConfiguration.isHovered]',
      onChanged: (_) => bloc.add(const SetIsHoveredEvent()),
    );
  }
}

final class _BorderedCheckbox extends StatelessWidget {
  const _BorderedCheckbox();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroHoverButtonWidgetShowcaseBloc>();

    return MyoroCheckbox(
      initialValue: bloc.state.bordered,
      label: '[MyoroHoverButtonConfiguration.bordered]',
      onChanged: (_) => bloc.add(const SetBorderedEvent()),
    );
  }
}

final class _BorderRadiusSlider extends StatefulWidget {
  const _BorderRadiusSlider();

  @override
  State<_BorderRadiusSlider> createState() => _BorderRadiusSliderState();
}

final class _BorderRadiusSliderState extends State<_BorderRadiusSlider> {
  late final _defaultBorderRadius = context
      .resolveThemeExtension<MyoroHoverButtonThemeExtension>()
      .borderRadius
      .bottomLeft
      .x;
  late double _value = _defaultBorderRadius;

  void _event(double? value) {
    context.resolveBloc<MyoroHoverButtonWidgetShowcaseBloc>().add(
          SetBorderRadiusEvent(
            value,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context
        .resolveThemeExtension<MyoroHoverButtonWidgetShowcaseThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyoroSlider(
          maxValue: themeExtension.borderRadiusSliderMaxValue,
          initialValue: _value,
          label: '[MyoroHoverButtonConfiguration.borderRadius]',
          onChanged: (double value) {
            setState(() {
              _value = value;
              _event(_value);
            });
          },
        ),
        if (_value != _defaultBorderRadius)
          IntrinsicWidth(
            child: MyoroIconTextHoverButton(
              text: 'Reset',
              configuration: MyoroHoverButtonConfiguration(
                bordered: themeExtension.borderRadiusSliderMaxValueBordered,
              ),
              onPressed: () {
                setState(() {
                  _value = _defaultBorderRadius;
                  _event(null);
                });
              },
            ),
          ),
      ],
    );
  }
}

final class _TooltipEnabledCheckbox extends StatelessWidget {
  const _TooltipEnabledCheckbox();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroHoverButtonWidgetShowcaseBloc>();

    return MyoroCheckbox(
      initialValue: bloc.state.tooltipEnabled,
      label: '[MyoroHoverButtonConfiguration.tooltip]',
      onChanged: (_) => bloc.add(const SetTooltipEnabledEvent()),
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
      label: '[MyoroHoverButton.onPressed] not [null]?',
      onChanged: (_) => bloc.add(const SetOnPressedEnabledEvent()),
    );
  }
}

final class _ColorDropdown extends StatelessWidget {
  final String _label;
  final MyoroSingularDropdownOnChanged<Color> _onChanged;

  const _ColorDropdown(
    this._label,
    this._onChanged,
  );

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

  String _itemLabelBuilder(Color color) => color.hexadecimalFormat;

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<Color>(
      configuration: MyoroDropdownConfiguration(
        label: _label,
        dataConfiguration:
            MyoroDataConfiguration(staticItems: kMyoroTestColors),
        itemBuilder: _itemBuilder,
        itemLabelBuilder: _itemLabelBuilder,
      ),
      onChanged: _onChanged,
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
    final themeExtension = context
        .resolveThemeExtension<MyoroHoverButtonWidgetShowcaseThemeExtension>();
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
              _color.hexadecimalFormat,
              style: themeExtension.colorDropdownItemColorTextStyle.withColor(
                _hovered
                    ? themeExtension.colorDropdownitemPrimaryColor
                    : _onPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
