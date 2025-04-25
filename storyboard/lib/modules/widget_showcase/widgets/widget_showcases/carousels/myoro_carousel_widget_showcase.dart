import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_carousel_widget_showcase_bloc/myoro_carousel_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroCarousel].
final class MyoroCarouselWidgetShowcase extends StatelessWidget {
  const MyoroCarouselWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroCarouselWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _DirectionOption(),
          _DisplayTraversalButtonsOptions(),
          _AutoplayOption(),
          _AutoplayIntervalDurationOption(),
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
      MyoroCarouselWidgetShowcaseBloc,
      MyoroCarouselWidgetShowcaseState
    >(
      builder: (_, MyoroCarouselWidgetShowcaseState state) {
        return MyoroCarousel(
          direction: state.direction,
          displayTraversalButtons: state.displayTraversalButtons,
          autoplay: state.autoplay,
          autoplayIntervalDuration: state.autoplayIntervalDuration,
          items: List.generate(
            faker.randomGenerator.integer(10),
            (_) => Container(
              width: 300,
              height: 300,
              color:
                  kMyoroTestColors[faker.randomGenerator.integer(
                    kMyoroTestColors.length,
                  )],
            ),
          ),
        );
      },
    );
  }
}

final class _DirectionOption extends StatelessWidget {
  const _DirectionOption();

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<Axis>(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Direction',
        menuConfiguration: MyoroMenuConfiguration(
          request: Axis.values.toSet,
          itemBuilder: _itemBuilder,
        ),
        selectedItemBuilder: _getDirectionName,
        allowItemClearing: false,
        initiallySelectedItem: Axis.horizontal,
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
    return direction.isHorizontal ? 'Horizontal' : 'Vertical';
  }

  void _onChanged(BuildContext context, Axis? direction) {
    final bloc = context.resolveBloc<MyoroCarouselWidgetShowcaseBloc>();
    bloc.add(SetDirectionEvent(direction!));
  }
}

final class _DisplayTraversalButtonsOptions extends StatelessWidget {
  const _DisplayTraversalButtonsOptions();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroCarouselWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: 'Display traversal buttons?',
      initialValue: bloc.state.displayTraversalButtons,
      onChanged: (bool value) {
        bloc.add(SetDisplayTraversalButtonsEvent(value));
      },
    );
  }
}

final class _AutoplayOption extends StatelessWidget {
  const _AutoplayOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroCarouselWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: 'Autoplay',
      initialValue: bloc.state.autoplay,
      onChanged: (bool value) => bloc.add(SetAutoplayEvent(value)),
    );
  }
}

final class _AutoplayIntervalDurationOption extends StatelessWidget {
  const _AutoplayIntervalDurationOption();

  @override
  Widget build(BuildContext context) {
    return MyoroSlider(
      label: 'Autoplay duration',
      minValue: 1,
      initialValue: kMyoroCarouselAutoplayIntervalDuration.inSeconds.toDouble(),
      maxValue: 5,
      onChanged: (double value) {
        context.resolveBloc<MyoroCarouselWidgetShowcaseBloc>().add(
          SetAutoplayIntervalDurationEvent(Duration(seconds: value.toInt())),
        );
      },
    );
  }
}
