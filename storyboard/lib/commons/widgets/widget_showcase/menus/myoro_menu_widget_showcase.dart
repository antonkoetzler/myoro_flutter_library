import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
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
        widgetOptions: _WidgetOptions(),
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
          maxHeight: state.maxHeight,
          items: List.generate(
            state.itemCount,
            (_) => MyoroMenuItem.fake(),
          ),
        );
      },
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  const _WidgetOptions();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _MaxHeightOption(),
        _ItemCountOption(),
      ],
    );
  }
}

final class _MaxHeightOption extends StatelessWidget {
  const _MaxHeightOption();

  @override
  Widget build(BuildContext context) {
    return const Text('TODO: Need a checkbox component FML');
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
