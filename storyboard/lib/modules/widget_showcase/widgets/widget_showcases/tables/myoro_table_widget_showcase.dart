import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_table_widget_showcase_bloc/myoro_table_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// [WidgetShowcase] of [MyoroTable].
///
/// TODO: Needs to be tested.
final class MyoroTableWidgetShowcase extends StatelessWidget {
  const MyoroTableWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroTableWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [_PaginationControlsOption()],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      MyoroTableWidgetShowcaseBloc,
      MyoroTableWidgetShowcaseState
    >(builder: _builder);
  }

  Widget _builder(_, MyoroTableWidgetShowcaseState state) {
    final titleColumns = _createTitleCells();

    return MyoroTable(
      configuration: MyoroTableConfiguration<String>(
        showPaginationControls: state.showPaginationControls,
        titleColumns: titleColumns,
        rowBuilder: (String item) => _rowBuilder(item, titleColumns.length),
        request: _request,
      ),
    );
  }

  List<MyoroTableColumn> _createTitleCells() {
    return List.generate(
      faker.randomGenerator.integer(5, min: 1),
      (_) => MyoroTableColumn.fake(),
    );
  }

  MyoroTableRow<String> _rowBuilder(String item, int titleColumnsLength) {
    return MyoroTableRow(
      onTapUp: _onTapUp,
      onTapDown: _onTapDown,
      cells: List.generate(titleColumnsLength, (_) => Text(item)),
    );
  }

  void _onTapUp(BuildContext context, String item) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        message: '$item tapped.',
        snackBarType: MyoroSnackBarTypeEnum.attention,
      ),
    );
  }

  void _onTapDown(BuildContext context, String item) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        message: '$item\'s tap released.',
        snackBarType: MyoroSnackBarTypeEnum.attention,
      ),
    );
  }

  Future<MyoroTablePagination<String>> _request(_) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return MyoroTablePagination(
      items: List.generate(
        faker.randomGenerator.integer(1000),
        (_) => faker.animal.name(),
      ),
    );
  }
}

final class _PaginationControlsOption extends StatelessWidget {
  const _PaginationControlsOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroTableWidgetShowcaseBloc>();

    return BlocBuilder<
      MyoroTableWidgetShowcaseBloc,
      MyoroTableWidgetShowcaseState
    >(
      builder: (_, MyoroTableWidgetShowcaseState state) {
        return MyoroCheckbox(
          label: 'Show pagination controls?',
          initialValue: state.showPaginationControls,
          onChanged: (bool value) => _onChanged(bloc, value),
        );
      },
    );
  }

  void _onChanged(MyoroTableWidgetShowcaseBloc bloc, bool value) {
    bloc.add(SetShowPaginationControlsEvent(value));
  }
}
