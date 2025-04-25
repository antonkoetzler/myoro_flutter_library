import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_group_checkbox_widget_showcase_bloc/myoro_group_checkbox_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroGroupCheckbox].
final class MyoroGroupCheckboxWidgetShowcase extends StatelessWidget {
  const MyoroGroupCheckboxWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroGroupCheckboxWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _DirectionOption(),
          _SpacingOption(),
          _RunSpacingOption(),
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
      MyoroGroupCheckboxWidgetShowcaseBloc,
      MyoroGroupCheckboxWidgetShowcaseState
    >(
      builder: (_, MyoroGroupCheckboxWidgetShowcaseState state) {
        return MyoroGroupCheckbox(
          direction: state.direction,
          spacing: state.spacing,
          runSpacing: state.runSpacing,
          checkboxes: {
            for (int i = 0; i < 5; i++)
              faker.person.name(): faker.randomGenerator.boolean(),
          },
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
  late final _bloc =
      context.resolveBloc<MyoroGroupCheckboxWidgetShowcaseBloc>();
  final _controller = MyoroSingularDropdownController<Axis>();

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<Axis>(
      configuration: MyoroSingularDropdownConfiguration(
        label: '[MyoroGroupCheckbox.direction]',
        menuConfiguration: MyoroMenuConfiguration(
          request: Axis.values.toSet,
          itemBuilder: _itemBuilder,
        ),
        selectedItemBuilder: _directionName,
        initiallySelectedItem: _bloc.state.direction,
        onChanged:
            (Axis? direction) => _bloc.add(SetDirectionEvent(direction!)),
        controller: _controller,
      ),
    );
  }

  String _directionName(Axis direction) {
    return direction.isHorizontal ? 'Horizontal' : 'Vertical';
  }

  MyoroMenuItem _itemBuilder(Axis direction) {
    return MyoroMenuItem(
      textConfiguration: MyoroIconTextButtonTextConfiguration(
        text: _directionName(direction),
      ),
    );
  }
}

final class _SpacingOption extends StatefulWidget {
  const _SpacingOption();

  @override
  State<_SpacingOption> createState() => _SpacingOptionState();
}

final class _SpacingOptionState extends State<_SpacingOption> {
  late final _bloc =
      context.resolveBloc<MyoroGroupCheckboxWidgetShowcaseBloc>();
  late final _controller = TextEditingController(
    text: _bloc.state.spacing.toString(),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroInput.number(
      max: 100,
      configuration: MyoroInputConfiguration(
        label: '[MyoroGroupCheckbox.spacing]',
        controller: _controller,
        onChanged:
            (_) => _bloc.add(SetSpacingEvent(double.parse(_controller.text))),
      ),
    );
  }
}

final class _RunSpacingOption extends StatefulWidget {
  const _RunSpacingOption();

  @override
  State<_RunSpacingOption> createState() => _RunSpacingOptionState();
}

final class _RunSpacingOptionState extends State<_RunSpacingOption> {
  late final _bloc =
      context.resolveBloc<MyoroGroupCheckboxWidgetShowcaseBloc>();
  late final _controller = TextEditingController(
    text: _bloc.state.spacing.toString(),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroInput.number(
      max: 100,
      configuration: MyoroInputConfiguration(
        label: '[MyoroGroupCheckbox.runSpacing]',
        controller: _controller,
        onChanged:
            (_) =>
                _bloc.add(SetRunSpacingEvent(double.parse(_controller.text))),
      ),
    );
  }
}
