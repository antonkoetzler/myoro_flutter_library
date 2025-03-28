import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_basic_divider_widget_showcase_bloc/myoro_basic_divider_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroBasicDivider].
final class MyoroBasicDividerWidgetShowcase extends StatelessWidget {
  const MyoroBasicDividerWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) => MyoroBasicDividerWidgetShowcaseBloc(
            shortValue:
                context
                    .resolveThemeExtension<MyoroBasicDividerThemeExtension>()
                    .shortValue,
          ),
      child: const WidgetShowcase(
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

final class _DirectionOption extends StatefulWidget {
  const _DirectionOption();

  @override
  State<_DirectionOption> createState() => _DirectionOptionState();
}

final class _DirectionOptionState extends State<_DirectionOption> {
  late final _bloc = context.resolveBloc<MyoroBasicDividerWidgetShowcaseBloc>();
  late final _controller = MyoroSingularDropdownController<Axis>(
    _bloc.state.direction,
  );

  String _getDirectionName(Axis direction) =>
      direction.name[0].toUpperCase() + direction.name.substring(1);

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown(
      configuration: MyoroDropdownConfiguration(
        label: '[MyoroBasicDivider.direction]',
        dataConfiguration: MyoroDataConfiguration(staticItems: Axis.values),
        itemBuilder:
            (Axis direction) =>
                MyoroMenuItem(text: _getDirectionName(direction)),
        itemLabelBuilder: _getDirectionName,
        allowItemClearing: false,
      ),
      onChanged: (Axis? direction) => _bloc.add(SetDirectionEvent(direction!)),
      controller: _controller,
    );
  }
}

final class _ShortValueOption extends StatelessWidget {
  const _ShortValueOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroBasicDividerWidgetShowcaseBloc>();

    return MyoroSlider(
      label: '[MyoroBasicDivider.shortValue]',
      minValue: 0,
      maxValue: 200,
      initialValue: bloc.state.shortValue,
      onChanged: (double value) => bloc.add(SetShortValueEvent(value)),
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
          label: 'Vertical padding',
          minValue: minValue,
          maxValue: maxValue,
          initialValue: bloc.state.verticalPadding,
          onChanged: (double value) => _event(bloc, Axis.vertical, value),
        ),
        MyoroSlider(
          label: 'Horizontal padding',
          minValue: minValue,
          maxValue: maxValue,
          initialValue: bloc.state.horizontalPadding,
          onChanged: (double value) => _event(bloc, Axis.horizontal, value),
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
    return MyoroIconTextHoverButton(
      text: _text,
      configuration: MyoroHoverButtonConfiguration(
        bordered:
            context
                .resolveThemeExtension<
                  MyoroBasicDividerWidgetShowcaseThemeExtension
                >()
                .buttonBordered,
      ),
      onPressed: () {},
    );
  }
}
