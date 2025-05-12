import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_pie_graph_widget_showcase_bloc/myoro_pie_graph_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroPieGraph].
final class MyoroPieGraphWidgetShowcase extends StatelessWidget {
  const MyoroPieGraphWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroPieGraphWidgetShowcaseBloc(),
      child: BlocBuilder<MyoroPieGraphWidgetShowcaseBloc, MyoroPieGraphWidgetShowcaseState>(
        builder: (_, MyoroPieGraphWidgetShowcaseState state) {
          return WidgetShowcase(
            widget: const _Widget(),
            widgetOptionsBuilder: () => _widgetOptionsBuilder(state),
          );
        },
      ),
    );
  }

  List<Widget> _widgetOptionsBuilder(MyoroPieGraphWidgetShowcaseState state) {
    return [const _TypeEnumOption(), if (state.typeEnum.isDonut) const _CenterWidgetOption()];
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroPieGraphWidgetShowcaseBloc, MyoroPieGraphWidgetShowcaseState>(
      builder: (_, MyoroPieGraphWidgetShowcaseState state) {
        return MyoroPieGraph(
          configuration: MyoroPieGraphConfiguration(
            typeEnum: state.typeEnum,
            centerWidget: state.centerWidgetEnabled ? const _CenterWidget() : null,
            items: List.generate(
              faker.randomGenerator.integer(10),
              (_) => MyoroPieGraphItem(
                value: faker.randomGenerator.decimal(),
                radius: faker.randomGenerator.integer(100).toDouble(),
                color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
              ),
            ),
          ),
        );
      },
    );
  }
}

final class _CenterWidget extends StatelessWidget {
  const _CenterWidget();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroPieGraphWidgetShowcaseThemeExtension>();

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: themeExtension.centerWidgetBorderRadius,
      child: Image.asset(
        'assets/images/happy_cat.jpg',
        width: themeExtension.centerWidgetSize,
        height: themeExtension.centerWidgetSize,
      ),
    );
  }
}

final class _TypeEnumOption extends StatelessWidget {
  const _TypeEnumOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroPieGraphWidgetShowcaseBloc>();

    return MyoroSingularDropdown<MyoroPieGraphEnum>(
      configuration: MyoroSingularDropdownConfiguration(
        label: '[MyoroPieGraph.typeEnum]',
        allowItemClearing: false,
        menuConfiguration: MyoroMenuConfiguration(
          request: MyoroPieGraphEnum.values.toSet,
          itemBuilder: _itemBuilder,
        ),
        selectedItemBuilder: _selectedItemBuilder,
        initiallySelectedItem: bloc.state.typeEnum,
        onChanged: (typeEnum) => _onChanged(bloc, typeEnum),
      ),
    );
  }

  MyoroMenuItem _itemBuilder(MyoroPieGraphEnum typeEnum) {
    return MyoroMenuItem(
      textConfiguration: MyoroIconTextButtonTextConfiguration(text: typeEnum.name),
    );
  }

  String _selectedItemBuilder(MyoroPieGraphEnum typeEnum) {
    return typeEnum.name;
  }

  void _onChanged(MyoroPieGraphWidgetShowcaseBloc bloc, MyoroPieGraphEnum? typeEnum) {
    bloc.add(SetTypeEnumEvent(typeEnum!));
  }
}

final class _CenterWidgetOption extends StatelessWidget {
  const _CenterWidgetOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroPieGraphWidgetShowcaseBloc>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: '[MyoroPieGraph.centerWidget] enabled?',
        initialValue: bloc.state.centerWidgetEnabled,
        onChanged: (bool value) => bloc.add(SetCenterWidgetEnabledEvent(value)),
      ),
    );
  }
}
