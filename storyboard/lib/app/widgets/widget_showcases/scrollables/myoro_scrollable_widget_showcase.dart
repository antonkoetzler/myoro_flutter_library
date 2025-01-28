import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_scrollable_widget_showcase_bloc/myoro_scrollable_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroScrollable].
final class MyoroScrollableWidgetShowcase extends StatelessWidget {
  const MyoroScrollableWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroScrollableWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _ScrollableTypeOption(),
          _DirectionOption(),
          _PaddingOption(),
          _ConstraintsOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroScrollableWidgetShowcaseBloc, MyoroScrollableWidgetShowcaseState>(
      builder: (_, MyoroScrollableWidgetShowcaseState state) {
        return MyoroScrollable(
          scrollableType: state.scrollableType,
          direction: state.direction,
          padding: EdgeInsets.all(state.padding),
          children: List.generate(
            faker.randomGenerator.integer(200, min: 50),
            (_) => _Item(state.direction),
          ),
        );
      },
    );
  }
}

final class _Item extends StatelessWidget {
  final Axis _direction;

  const _Item(this._direction);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroScrollableWidgetShowcaseThemeExtension>();
    final configuration = MyoroHoverButtonConfiguration(bordered: themeExtension.itemBordered);

    final button = MyoroIconTextHoverButton(
      icon: kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
      text: faker.lorem.word(),
      configuration: configuration,
      onPressed: () {},
    );
    final horizontalWidget = IntrinsicWidth(child: button);

    return Padding(
      padding: themeExtension.itemPadding,
      child: _direction.isHorizontal ? horizontalWidget : button,
    );
  }
}

final class _ScrollableTypeOption extends StatefulWidget {
  const _ScrollableTypeOption();

  @override
  State<_ScrollableTypeOption> createState() => _ScrollableTypeOptionState();
}

final class _ScrollableTypeOptionState extends State<_ScrollableTypeOption> {
  final _dataConfiguration = MyoroDataConfiguration(staticItems: MyoroScrollableEnum.values);

  late final _bloc = context.resolveBloc<MyoroScrollableWidgetShowcaseBloc>();
  late final _controller = MyoroSingularDropdownController<MyoroScrollableEnum>(_bloc.state.scrollableType);

  String _getScrollableTypeName(MyoroScrollableEnum scrollableType) {
    return switch (scrollableType) {
      MyoroScrollableEnum.customScrollView => '[MyoroScrollableEnum.customScrollView]',
      MyoroScrollableEnum.singleChildScrollView => '[MyoroScrollableEnum.singleChildScrollView]',
    };
  }

  MyoroMenuItem _itemBuilder(MyoroScrollableEnum scrollableType) {
    return MyoroMenuItem(text: _getScrollableTypeName(scrollableType));
  }

  void _onChanged(MyoroScrollableEnum? scrollableTypes) {
    _bloc.add(
      SetScrollableTypeEvent(
        scrollableTypes!,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<MyoroScrollableEnum>(
      configuration: MyoroDropdownConfiguration(
        label: '[MyoroScrollable.scrollableType]',
        dataConfiguration: _dataConfiguration,
        itemBuilder: _itemBuilder,
        itemLabelBuilder: _getScrollableTypeName,
        allowItemClearing: false,
      ),
      onChanged: _onChanged,
      controller: _controller,
    );
  }
}

final class _DirectionOption extends StatefulWidget {
  const _DirectionOption();

  @override
  State<_DirectionOption> createState() => _DirectionOptionState();
}

final class _DirectionOptionState extends State<_DirectionOption> {
  final _dataConfiguration = MyoroDataConfiguration(staticItems: Axis.values);

  late final _bloc = context.resolveBloc<MyoroScrollableWidgetShowcaseBloc>();
  late final _controller = MyoroSingularDropdownController<Axis>(_bloc.state.direction);

  String _getDirectionName(Axis direction) => switch (direction) { Axis.vertical => 'Vertical', Axis.horizontal => 'Horizontal' };
  MyoroMenuItem _itemBuilder(Axis direction) => MyoroMenuItem(text: _getDirectionName(direction));
  void _onChanged(Axis? direction) => _bloc.add(SetDirectionEvent(direction!));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<Axis>(
      configuration: MyoroDropdownConfiguration(
        label: '[MyoroScrollable.direction]',
        dataConfiguration: _dataConfiguration,
        itemBuilder: _itemBuilder,
        itemLabelBuilder: _getDirectionName,
        allowItemClearing: false,
      ),
      onChanged: _onChanged,
      controller: _controller,
    );
  }
}

final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroScrollableWidgetShowcaseBloc>();

    return MyoroSlider(
      label: '[MyoroScrollable.padding]',
      initialValue: bloc.state.padding,
      maxValue: 100,
      onChanged: (double value) => bloc.add(SetPaddingEvent(value)),
    );
  }
}

final class _ConstraintsOption extends StatefulWidget {
  const _ConstraintsOption();

  @override
  State<_ConstraintsOption> createState() => _ConstraintsOptionState();
}

final class _ConstraintsOptionState extends State<_ConstraintsOption> {
  late final MyoroScrollableWidgetShowcaseBloc _bloc;

  final _minWidthController = TextEditingController();
  final _maxWidthController = TextEditingController();
  final _minHeightController = TextEditingController();
  final _maxHeightController = TextEditingController();

  void _event() {
    final minWidth = double.parse(_minWidthController.text);
    final maxWidth = double.parse(_maxWidthController.text);
    final minHeight = double.parse(_minHeightController.text);
    final maxHeight = double.parse(_maxHeightController.text);

    BoxConstraints? constraints;

    if (minWidth != 0 && maxWidth != 0 && minHeight != 0 && maxHeight != 0) {
      constraints = BoxConstraints(
        minWidth: minWidth,
        maxWidth: maxWidth,
        minHeight: minHeight,
        maxHeight: maxHeight,
      );
    }

    _bloc.add(SetConstraintsEvent(constraints));
  }

  @override
  void initState() {
    super.initState();
    _bloc = context.resolveBloc<MyoroScrollableWidgetShowcaseBloc>();
  }

  @override
  void dispose() {
    _minWidthController.dispose();
    _maxWidthController.dispose();
    _minHeightController.dispose();
    _maxHeightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalWidgetShowcaseThemeExtension>();
    final spacing = themeExtension.spacing;

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: spacing,
      children: [
        Text(
          '[MyoroScrollable.constraints]',
          style: themeExtension.headerTextStyle,
        ),
        SizedBox(height: themeExtension.spacing / 3),
        Row(
          spacing: spacing,
          children: [
            Expanded(
              child: _NumberInput(
                label: 'Min width',
                controller: _minWidthController,
                onChanged: (_) => _event(),
              ),
            ),
            Expanded(
              child: _NumberInput(
                label: 'Max width',
                controller: _maxWidthController,
                onChanged: (_) => _event(),
              ),
            ),
          ],
        ),
        Row(
          spacing: spacing,
          children: [
            Expanded(
              child: _NumberInput(
                label: 'Min height',
                controller: _minHeightController,
                onChanged: (_) => _event(),
              ),
            ),
            Expanded(
              child: _NumberInput(
                label: 'Max height',
                controller: _maxHeightController,
                onChanged: (_) => _event(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

final class _NumberInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final void Function(double value) onChanged;

  const _NumberInput({
    required this.label,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return MyoroInput.number(
      max: 500,
      configuration: MyoroInputConfiguration(
        label: label,
        controller: controller,
        inputStyle: context.resolveThemeExtension<MyoroModalWidgetShowcaseThemeExtension>().inputStyle,
        onChanged: (String text) => onChanged.call(double.parse(text)),
      ),
    );
  }
}
