import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_table_widget_showcase_bloc/myoro_table_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroTable].
final class MyoroTableWidgetShowcase extends StatelessWidget {
  const MyoroTableWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroTableWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _EnableColumnResizingOption(),
          _EnableCheckboxesOption(),
          _ShowPaginationControlsOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final columns = List.generate(
      2,
      (int index) => MyoroTableColumn.fake().copyWith(
        title: faker.randomGenerator.string(10),
        ordenationCallback: index == 0 ? () => {} : null,
      ),
    );

    return BlocBuilder<MyoroTableWidgetShowcaseBloc, MyoroTableWidgetShowcaseState>(
      builder: (_, MyoroTableWidgetShowcaseState state) {
        return MyoroTable<String>(
          columns: columns,
          rowBuilder: (String item) => MyoroTableRow(
            cells: columns.map<MyoroTableCell>((_) {
              return MyoroTableCell.fake();
            }).toList(),
          ),
          dataConfiguration: MyoroDataConfiguration(
            asyncronousItems: (_) async {
              await Future.delayed(const Duration(seconds: 1));
              return List.generate(
                faker.randomGenerator.integer(100),
                (_) => faker.randomGenerator.string(10),
              );
            },
          ),
          enableColumnResizing: state.enableColumnResizing,
          enableCheckboxes: state.enableCheckboxes,
          showPaginationControls: state.showPaginationControls,
        );
      },
    );
  }
}

final class _EnableColumnResizingOption extends StatelessWidget {
  const _EnableColumnResizingOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroTableWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroTable.enableColumnResizing]',
      initialValue: bloc.state.enableColumnResizing,
      onChanged: (bool value) => bloc.add(SetEnableColumnResizingEvent(value)),
    );
  }
}

final class _EnableCheckboxesOption extends StatelessWidget {
  const _EnableCheckboxesOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroTableWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroTable.enableCheckboxes]',
      initialValue: bloc.state.enableCheckboxes,
      onChanged: (bool value) => bloc.add(SetEnableCheckboxesEvent(value)),
    );
  }
}

final class _ShowPaginationControlsOption extends StatelessWidget {
  const _ShowPaginationControlsOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroTableWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroTable.showPaginationControls]',
      initialValue: bloc.state.showPaginationControls,
      onChanged: (bool value) => bloc.add(SetShowPaginationControlsEvent(value)),
    );
  }
}
