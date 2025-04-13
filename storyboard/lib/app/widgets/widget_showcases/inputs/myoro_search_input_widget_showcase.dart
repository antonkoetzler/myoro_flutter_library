import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_search_input_widget_showcase_bloc/myoro_search_input_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroSearchInput].
final class MyoroSearchInputWidgetShowcase extends StatelessWidget {
  const MyoroSearchInputWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroSearchInputWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [_RequestWhenChangedOption()],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      MyoroSearchInputWidgetShowcaseBloc,
      MyoroSearchInputWidgetShowcaseState
    >(
      builder: (_, MyoroSearchInputWidgetShowcaseState state) {
        return MyoroSearchInput<String>(
          configuration: const MyoroInputConfiguration(
            inputStyle: MyoroInputStyleEnum.outlined,
          ),
          requestWhenChanged: state.requestWhenChanged,
          request: _request,
          itemBuilder: _itemBuilder,
        );
      },
    );
  }

  Future<Set<String>> _request(_) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return List.generate(
      faker.randomGenerator.integer(50),
      (_) => faker.randomGenerator.string(150),
    ).toSet();
  }

  MyoroMenuItem _itemBuilder(String item) {
    return MyoroMenuItem(text: item, onPressed: () {});
  }
}

final class _RequestWhenChangedOption extends StatelessWidget {
  const _RequestWhenChangedOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroSearchInputWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroSearchInput.requestWhenChanged]',
      initialValue: bloc.state.requestWhenChanged,
      onChanged: (bool value) => bloc.add(SetRequestWhenChangedEvent(value)),
    );
  }
}
