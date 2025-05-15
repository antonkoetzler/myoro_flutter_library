import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_basic_divider_widget_showcase_bloc/myoro_basic_divider_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroBasicDivider].
final class MyoroBasicDividerWidgetShowcase extends StatelessWidget {
  const MyoroBasicDividerWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return MyoroBasicDividerWidgetShowcaseBloc(
          shortValue:
              context
                  .resolveThemeExtension<MyoroBasicDividerThemeExtension>()
                  .shortValue,
        );
      },
      child: const WidgetShowcase(
        widgetName: StoryboardWidgetListingEnum.myoroBasicDividerTitle,
        widget: _Widget(),
        widgetOptions: [
          _DirectionOption(),
          _ShortValueOption(),
          _PaddingOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      MyoroBasicDividerWidgetShowcaseBloc,
      MyoroBasicDividerWidgetShowcaseState
    >(
      builder: (_, MyoroBasicDividerWidgetShowcaseState state) {
        final children = [
          const Flexible(child: _Button('A button')),
          MyoroBasicDivider(
            configuration: MyoroBasicDividerConfiguration(
              direction: state.direction,
              shortValue: state.shortValue,
              padding: EdgeInsets.symmetric(
                vertical: state.verticalPadding,
                horizontal: state.horizontalPadding,
              ),
            ),
          ),
          const Flexible(child: _Button('Another button')),
        ];

        if (state.direction.isHorizontal) {
          return Column(mainAxisSize: MainAxisSize.min, children: children);
        }

        return IntrinsicHeight(
          child: Row(mainAxisSize: MainAxisSize.min, children: children),
        );
      },
    );
  }
}

final class _DirectionOption extends StatelessWidget {
  const _DirectionOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroBasicDividerWidgetShowcaseBloc>();

    return MyoroSingularDropdown(
      configuration: MyoroSingularDropdownConfiguration(
        label: '[MyoroBasicDivider.direction]',
        menuConfiguration: MyoroMenuConfiguration(
          request: Axis.values.toSet,
          itemBuilder: _itemBuilder,
        ),
        selectedItemBuilder: _getDirectionName,
        allowItemClearing: false,
        initiallySelectedItem: bloc.state.direction,
        onChanged: (Axis? direction) => _onChanged(context, direction),
      ),
    );
  }

  MyoroMenuItem _itemBuilder(Axis direction) {
    return MyoroMenuItem(
      textConfiguration: MyoroIconTextButtonTextConfiguration(
        text: _getDirectionName(direction),
      ),
    );
  }

  String _getDirectionName(Axis direction) {
    return direction.name[0].toUpperCase() + direction.name.substring(1);
  }

  void _onChanged(BuildContext context, Axis? direction) {
    final bloc = context.resolveBloc<MyoroBasicDividerWidgetShowcaseBloc>();
    bloc.add(SetDirectionEvent(direction!));
  }
}

final class _ShortValueOption extends StatelessWidget {
  const _ShortValueOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroBasicDividerWidgetShowcaseBloc>();

    return MyoroSlider(
      configuration: MyoroSliderConfiguration(
        label: '[MyoroBasicDivider.shortValue]',
        minValue: 0,
        maxValue: 200,
        initialValue: bloc.state.shortValue,
        onChanged: (double value) => bloc.add(SetShortValueEvent(value)),
      ),
    );
  }
}

final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  void _event(
    MyoroBasicDividerWidgetShowcaseBloc bloc,
    Axis direction,
    double value,
  ) {
    bloc.add(SetPaddingEvent(direction, value));
  }

  @override
  Widget build(BuildContext context) {
    const minValue = 0.0, maxValue = 50.0;
    final bloc = context.resolveBloc<MyoroBasicDividerWidgetShowcaseBloc>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyoroSlider(
          configuration: MyoroSliderConfiguration(
            label: 'Vertical padding',
            minValue: minValue,
            maxValue: maxValue,
            initialValue: bloc.state.verticalPadding,
            onChanged: (double value) => _event(bloc, Axis.vertical, value),
          ),
        ),
        MyoroSlider(
          configuration: MyoroSliderConfiguration(
            label: 'Horizontal padding',
            minValue: minValue,
            maxValue: maxValue,
            initialValue: bloc.state.horizontalPadding,
            onChanged: (double value) => _event(bloc, Axis.horizontal, value),
          ),
        ),
      ],
    );
  }
}

final class _Button extends StatelessWidget {
  final String _text;

  const _Button(this._text);

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(
          borderBuilder: (_) => MyoroButtonVariantEnum.border(context),
          onTapUp: (_) {},
        ),
        textConfiguration: MyoroIconTextButtonTextConfiguration(text: _text),
      ),
    );
  }
}
