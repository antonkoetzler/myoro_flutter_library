import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_basic_divider_widget_showcase_bloc/myoro_basic_divider_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroResizeDivider].
final class MyoroResizeDividerWidgetShowcase extends StatelessWidget {
  const MyoroResizeDividerWidgetShowcase({super.key});

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

final class _Widget extends StatefulWidget {
  const _Widget();

  @override
  State<_Widget> createState() => _WidgetState();
}

final class _WidgetState extends State<_Widget> {
  final _firstContainerNotifier = ValueNotifier<double?>(null);

  @override
  void dispose() {
    _firstContainerNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      MyoroBasicDividerWidgetShowcaseBloc,
      MyoroBasicDividerWidgetShowcaseState
    >(
      builder: (_, MyoroBasicDividerWidgetShowcaseState state) {
        final children = [
          Flexible(child: _Container(state.direction, _firstContainerNotifier)),
          _Divider(state, _firstContainerNotifier),
        ];

        return Stack(
          alignment: Alignment.center,
          children: [
            const Positioned(child: _AreYouSilly()),
            if (state.direction.isHorizontal)
              Column(children: children)
            else
              Row(children: children),
          ],
        );
      },
    );
  }
}

final class _DirectionOption extends StatelessWidget {
  const _DirectionOption();

  @override
  Widget build(BuildContext context) {
    late final bloc =
        context.resolveBloc<MyoroBasicDividerWidgetShowcaseBloc>();

    return MyoroSingularDropdown<Axis>(
      configuration: MyoroSingularDropdownConfiguration(
        label: '[MyoroResizeDivider.direction]',
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
    return MyoroMenuItem(text: _getDirectionName(direction));
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
      label: '[MyoroResizeDivider.shortValue]',
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

final class _AreYouSilly extends StatelessWidget {
  const _AreYouSilly();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          context
              .resolveThemeExtension<
                MyoroResizeDividerWidgetShowcaseThemeExtension
              >()
              .areYouSillyPadding,
      child: Image.asset(kAreYouSillyCat),
    );
  }
}

final class _Divider extends StatelessWidget {
  final MyoroBasicDividerWidgetShowcaseState _state;
  final ValueNotifier<double?> _firstContainerNotifier;

  const _Divider(this._state, this._firstContainerNotifier);

  @override
  Widget build(BuildContext context) {
    return MyoroResizeDivider(
      configuration: MyoroBasicDividerConfiguration(
        direction: _state.direction,
        shortValue: _state.shortValue,
        padding: EdgeInsets.symmetric(
          vertical: _state.verticalPadding,
          horizontal: _state.horizontalPadding,
        ),
      ),
      dragCallback: (DragUpdateDetails details) {
        _firstContainerNotifier.value =
            _firstContainerNotifier.value! +
            (_state.direction.isHorizontal
                ? details.delta.dy
                : details.delta.dx);
      },
    );
  }
}

final class _Container extends StatefulWidget {
  final Axis _direction;
  final ValueNotifier<double?> _notifier;

  const _Container(this._direction, this._notifier);

  @override
  State<_Container> createState() => _ContainerState();
}

final class _ContainerState extends State<_Container> {
  static const _minValue = 0.0;

  bool get _isHorizontal => widget._direction.isHorizontal;
  ValueNotifier<double?> get _notifier => widget._notifier;

  final _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _notifier,
      builder: (_, double? widthOrHeight, __) {
        if (widthOrHeight == null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            final size =
                (_key.currentContext!.findRenderObject() as RenderBox).size;
            _notifier.value = _isHorizontal ? size.height : size.width;
          });
        }

        return Container(
          key: _key,
          width: !_isHorizontal ? widthOrHeight : null,
          height: _isHorizontal ? widthOrHeight : null,
          constraints: const BoxConstraints(
            minWidth: _minValue,
            minHeight: _minValue,
          ),
          color:
              context
                  .resolveThemeExtension<
                    MyoroResizeDividerWidgetShowcaseThemeExtension
                  >()
                  .containerColor,
        );
      },
    );
  }
}
