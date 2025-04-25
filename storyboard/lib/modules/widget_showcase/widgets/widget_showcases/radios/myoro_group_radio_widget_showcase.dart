import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_group_radio_widget_showcase_bloc/myoro_group_radio_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroGroupRadio].
final class MyoroGroupRadioWidgetShowcase extends StatelessWidget {
  const MyoroGroupRadioWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroGroupRadioThemeExtension>();
    final direction = themeExtension.direction;
    final spacing = themeExtension.spacing;
    final runSpacing = themeExtension.runSpacing;

    return BlocProvider(
      create:
          (_) => MyoroGroupRadioWidgetShowcaseBloc(
            direction: direction,
            spacing: spacing,
            runSpacing: runSpacing,
          ),
      child: WidgetShowcase(
        widget: const _Widget(),
        widgetOptions: [
          const _DirectionOption(),
          _SpacingOption(spacing),
          _RunSpacingOption(runSpacing),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  void _onChanged(BuildContext context, String keyChanged) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(message: '$keyChanged is now selected!'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final keys = List.generate(
      faker.randomGenerator.integer(20, min: 2),
      (_) => faker.lorem.word(),
    );
    final trueKey = keys[faker.randomGenerator.integer(keys.length)];

    return BlocBuilder<
      MyoroGroupRadioWidgetShowcaseBloc,
      MyoroGroupRadioWidgetShowcaseState
    >(
      builder: (_, MyoroGroupRadioWidgetShowcaseState state) {
        return MyoroGroupRadio(
          direction: state.direction,
          spacing: state.spacing,
          runSpacing: state.runSpacing,
          onChanged: (String keyChanged, _) => _onChanged(context, keyChanged),
          radios: {for (final String key in keys) key: key == trueKey},
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
  late final _bloc = context.resolveBloc<MyoroGroupRadioWidgetShowcaseBloc>();
  final _controller = MyoroSingularDropdownController<Axis>();

  String _getDirectionName(Axis direction) {
    return switch (direction) {
      Axis.horizontal => 'Horizontal',
      Axis.vertical => 'Vertical',
    };
  }

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<Axis>(
      configuration: MyoroSingularDropdownConfiguration(
        label: '[MyoroGroupRadio.direction]',
        menuConfiguration: MyoroMenuConfiguration(
          request: Axis.values.toSet,
          itemBuilder: _itemBuilder,
        ),
        selectedItemBuilder: _getDirectionName,
        allowItemClearing: false,
        initiallySelectedItem: _bloc.state.direction,
        onChanged: _onChanged,
        controller: _controller,
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

  void _onChanged(Axis? direction) {
    _bloc.add(SetDirectionEvent(direction!));
  }
}

final class _SpacingOption extends StatelessWidget {
  final double _spacing;

  const _SpacingOption(this._spacing);

  @override
  Widget build(BuildContext context) {
    return _Slider(
      label: '[MyoroGroupRadio.spacing]',
      initialValue: _spacing,
      onChanged:
          (double value) => context
              .resolveBloc<MyoroGroupRadioWidgetShowcaseBloc>()
              .add(SetSpacingEvent(value)),
    );
  }
}

final class _RunSpacingOption extends StatelessWidget {
  final double _runSpacing;

  const _RunSpacingOption(this._runSpacing);

  @override
  Widget build(BuildContext context) {
    return _Slider(
      label: '[MyoroGroupRadio.runSpacing]',
      initialValue: _runSpacing,
      onChanged:
          (double value) => context
              .resolveBloc<MyoroGroupRadioWidgetShowcaseBloc>()
              .add(SetRunSpacingEvent(value)),
    );
  }
}

final class _Slider extends StatelessWidget {
  final String label;
  final double initialValue;
  final MyoroSliderOnChanged onChanged;

  const _Slider({
    required this.label,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return MyoroSlider(
      label: label,
      maxValue: 50,
      initialValue: initialValue,
      onChanged: onChanged,
    );
  }
}
