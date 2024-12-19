import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_pie_graph_widget_showcase_bloc/myoro_pie_graph_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroPieGraph].
final class MyoroPieGraphWidgetShowcase extends StatelessWidget {
  const MyoroPieGraphWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroPieGraphWidgetShowcaseBloc(),
      child: BlocBuilder<MyoroPieGraphWidgetShowcaseBloc, MyoroPieGraphWidgetShowcaseState>(builder: (_, MyoroPieGraphWidgetShowcaseState state) {
        return WidgetShowcase(
          widget: const _Widget(),
          widgetOptions: [
            const _TypeEnumOption(),
            if (state.typeEnum.isDonut) const _CenterWidgetOption(),
          ],
        );
      }),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroPieGraphWidgetShowcaseBloc, MyoroPieGraphWidgetShowcaseState>(
      builder: (_, MyoroPieGraphWidgetShowcaseState state) {
        return MyoroPieGraph(
          state.typeEnum,
          centerWidget: state.centerWidgetEnabled ? const _CenterWidget() : null,
          items: List.generate(
            faker.randomGenerator.integer(10),
            (_) => MyoroPieGraphItem(
              value: faker.randomGenerator.decimal(),
              radius: faker.randomGenerator.integer(100).toDouble(),
              color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
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
    final themeExtension = context.resolveThemeExtension<MyoroPieGraphWidgetShowcaseThemeExtension>();

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

final class _TypeEnumOption extends StatefulWidget {
  const _TypeEnumOption();

  @override
  State<_TypeEnumOption> createState() => _TypeEnumOptionState();
}

final class _TypeEnumOptionState extends State<_TypeEnumOption> {
  late final _bloc = context.resolveBloc<MyoroPieGraphWidgetShowcaseBloc>();
  late final _controller = MyoroDropdownController<MyoroPieGraphEnum>([_bloc.state.typeEnum]);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroDropdown(
      label: '[MyoroPieGraph.typeEnum]',
      showClearTextButton: false,
      controller: _controller,
      dataConfiguration: const MyoroDataConfiguration(staticItems: MyoroPieGraphEnum.values),
      itemBuilder: (MyoroPieGraphEnum typeEnum) => MyoroMenuItem(text: typeEnum.name),
      itemLabelBuilder: (MyoroPieGraphEnum typeEnum) => typeEnum.name,
      onChangedItems: (List<MyoroPieGraphEnum> typeEnums) => _bloc.add(SetTypeEnumEvent(typeEnums.first)),
    );
  }
}

final class _CenterWidgetOption extends StatelessWidget {
  const _CenterWidgetOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroPieGraphWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroPieGraph.centerWidget] enabled?',
      initialValue: bloc.state.centerWidgetEnabled,
      onChanged: (bool value) => bloc.add(SetCenterWidgetEnabledEvent(value)),
    );
  }
}
