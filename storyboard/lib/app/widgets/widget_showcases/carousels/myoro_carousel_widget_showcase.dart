import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_carousel_widget_showcase_bloc/myoro_carousel_widget_showcase_bloc.dart';
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
    return BlocBuilder<MyoroCarouselWidgetShowcaseBloc, MyoroCarouselWidgetShowcaseState>(
      builder: (_, MyoroCarouselWidgetShowcaseState state) {
        return MyoroCarousel(
          direction: state.direction,
          displayTraversalButtons: state.displayTraversalButtons,
          autoplay: state.autoplay,
          autoplayIntervalDuration: state.autoplayIntervalDuration,
          items: [
            Container(
              width: 300,
              height: 300,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
          ],
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
  final _controller = MyoroDropdownController<Axis>([Axis.horizontal]);

  String _getDirectionName(Axis direction) => direction.isHorizontal ? 'Horizontal' : 'Vertical';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroDropdown<Axis>(
      controller: _controller,
      dataConfiguration: MyoroDataConfiguration(
        staticItems: [
          Axis.horizontal,
          Axis.vertical,
        ],
      ),
      itemBuilder: (Axis direction) => MyoroMenuItem(text: _getDirectionName(direction)),
      itemLabelBuilder: _getDirectionName,
      onChangedItems: (List<Axis> directions) {
        context.resolveBloc<MyoroCarouselWidgetShowcaseBloc>().add(
              SetDirectionEvent(
                directions.first,
              ),
            );
      },
      showClearTextButton: false,
    );
  }
}

final class _DisplayTraversalButtonsOptions extends StatelessWidget {
  const _DisplayTraversalButtonsOptions();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroCarouselWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroCarousel.displayTraversalButtons]',
      initialValue: bloc.state.displayTraversalButtons,
      onChanged: (bool value) {
        bloc.add(
          SetDisplayTraversalButtonsEvent(
            value,
          ),
        );
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
      label: '[MyoroCarousel.autoplay]',
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
      minValue: 1,
      initialValue: kMyoroCarouselAutoplayIntervalDuration.inSeconds.toDouble(),
      maxValue: 5,
      onChanged: (double value) {
        context.resolveBloc<MyoroCarouselWidgetShowcaseBloc>().add(
              SetAutoplayIntervalDurationEvent(
                Duration(
                  seconds: value.toInt(),
                ),
              ),
            );
      },
    );
  }
}
