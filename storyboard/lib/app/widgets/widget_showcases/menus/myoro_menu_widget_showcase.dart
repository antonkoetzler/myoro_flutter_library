import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_menu_widget_showcase_bloc/myoro_menu_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroMenu].
final class MyoroMenuWidgetShowcase extends StatelessWidget {
  const MyoroMenuWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroMenuWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _IconSizeOption(),
          _ItemCountOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroMenuWidgetShowcaseBloc, MyoroMenuWidgetShowcaseState>(
      builder: (_, MyoroMenuWidgetShowcaseState state) {
        return MyoroMenu(
          iconSize: state.iconSize,
          itemBuilder: (String item) => MyoroMenuItem.fake(),
          dataConfiguration: MyoroDataConfiguration(
            asyncronousItems: () async {
              await Future.delayed(const Duration(milliseconds: 1500));

              return List.generate(
                state.itemCount,
                (_) => faker.randomGenerator.string(50),
              );
            },
          ),
        );
      },
    );
  }
}

final class _IconSizeOption extends StatelessWidget {
  const _IconSizeOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroMenuWidgetShowcaseBloc>();

    return MyoroInput.number(
      max: 300,
      configuration: MyoroInputConfiguration(
        inputStyle: MyoroInputStyleEnum.outlined,
        label: 'Icon size',
        checkboxOnChanged: (bool enabled, String text) => bloc.add(
          SetIconSizeEvent(
            enabled ? double.parse(text) : null,
          ),
        ),
        onChanged: (String text) => bloc.add(
          SetIconSizeEvent(
            double.parse(text),
          ),
        ),
      ),
    );
  }
}

final class _ItemCountOption extends StatelessWidget {
  const _ItemCountOption();

  @override
  Widget build(BuildContext context) {
    return MyoroInput.number(
      max: 100,
      configuration: MyoroInputConfiguration(
        inputStyle: MyoroInputStyleEnum.outlined,
        label: '# of items',
        onChanged: (String text) {
          context.resolveBloc<MyoroMenuWidgetShowcaseBloc>().add(
                SetItemCountEvent(
                  int.parse(text),
                ),
              );
        },
      ),
    );
  }
}
