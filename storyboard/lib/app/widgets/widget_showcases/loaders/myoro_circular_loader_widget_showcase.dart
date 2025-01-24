import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_circular_loader_widget_showcase_bloc/myoro_circular_loader_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroCircularLoader].
final class MyoroCircularLoaderWidgetShowcase extends StatelessWidget {
  const MyoroCircularLoaderWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroCircularLoaderWidgetShowcaseBloc(
        size: context.resolveThemeExtension<MyoroCircularLoaderThemeExtension>().size,
      ),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _ColorOption(),
          _SizeOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroCircularLoaderWidgetShowcaseBloc, MyoroCircularLoaderWidgetShowcaseState>(
      builder: (_, MyoroCircularLoaderWidgetShowcaseState state) {
        return MyoroCircularLoader(
          color: state.color,
          size: state.size,
        );
      },
    );
  }
}

final class _ColorOption extends StatelessWidget {
  const _ColorOption();

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

  void _onChanged(BuildContext context, Color? color) {
    context.resolveBloc<MyoroCircularLoaderWidgetShowcaseBloc>().add(SetColorEvent(color));
  }

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<Color>(
      configuration: MyoroDropdownConfiguration(
        label: 'Color',
        enabled: false,
        dataConfiguration: MyoroDataConfiguration(staticItems: kMyoroTestColors),
        itemBuilder: _itemBuilder,
        itemLabelBuilder: _itemLabelBuilder,
      ),
      onChanged: (Color? color) => _onChanged(context, color),
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
              _color.hexadecimalFormat,
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

final class _SizeOption extends StatelessWidget {
  const _SizeOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroCircularLoaderWidgetShowcaseBloc>();

    return MyoroSlider(
      label: 'Size',
      maxValue: bloc.state.size + 500,
      onChanged: (double value) => bloc.add(SetSizeEvent(value)),
    );
  }
}
