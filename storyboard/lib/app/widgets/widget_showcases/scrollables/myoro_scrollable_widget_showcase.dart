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
  late final _controller = MyoroDropdownController<MyoroScrollableEnum>([_bloc.state.scrollableType]);

  String _getScrollableTypeName(MyoroScrollableEnum scrollableType) {
    return switch (scrollableType) {
      MyoroScrollableEnum.customScrollView => '[MyoroScrollableEnum.customScrollView]',
      MyoroScrollableEnum.singleChildScrollView => '[MyoroScrollableEnum.singleChildScrollView]',
    };
  }

  MyoroMenuItem _itemBuilder(MyoroScrollableEnum scrollableType) {
    return MyoroMenuItem(text: _getScrollableTypeName(scrollableType));
  }

  void _onChangedItems(List<MyoroScrollableEnum> scrollableTypes) {
    _bloc.add(
      SetScrollableTypeEvent(
        scrollableTypes.first,
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
    return MyoroDropdown<MyoroScrollableEnum>(
      label: '[MyoroScrollable.scrollableType]',
      controller: _controller,
      dataConfiguration: _dataConfiguration,
      itemBuilder: _itemBuilder,
      itemLabelBuilder: _getScrollableTypeName,
      onChangedItems: _onChangedItems,
      showClearTextButton: false,
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
  late final _controller = MyoroDropdownController<Axis>([_bloc.state.direction]);

  String _getDirectionName(Axis direction) => switch (direction) { Axis.vertical => 'Vertical', Axis.horizontal => 'Horizontal' };
  MyoroMenuItem _itemBuilder(Axis direction) => MyoroMenuItem(text: _getDirectionName(direction));
  void _onChangedItems(List<Axis> directions) => _bloc.add(SetDirectionEvent(directions.first));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroDropdown<Axis>(
      label: '[MyoroScrollable.direction]',
      controller: _controller,
      dataConfiguration: _dataConfiguration,
      itemBuilder: _itemBuilder,
      itemLabelBuilder: _getDirectionName,
      onChangedItems: _onChangedItems,
      showClearTextButton: false,
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
