import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/blocs/myoro_table_bloc/myoro_table_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Table of MFL.
///
/// TODO: DELETE ALL TABLE FILES.
class MyoroTable<T> extends StatefulWidget {
  /// Configuration of [MyoroTable].
  final MyoroTableConfiguration<T> configuration;

  const MyoroTable({super.key, required this.configuration});

  @override
  State<MyoroTable<T>> createState() => _MyoroTableState<T>();
}

final class _MyoroTableState<T> extends State<MyoroTable<T>> {
  MyoroTableConfiguration<T> get _configuration => widget.configuration;
  MyoroTableController<T> get _tableController => _configuration.controller;

  /// Central [Bloc] of [MyoroTable].
  late final MyoroTableBloc<T> _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = MyoroTableBloc(_configuration);
    _bloc.add(const InitializeColumnDependenciesEvent());
    _tableController.bloc = _bloc;
    _tableController.fetch();
  }

  @override
  void didUpdateWidget(covariant MyoroTable<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _tableController.bloc = _bloc;
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return BlocProvider.value(
      value: _bloc,
      // Listens for the condition to call [GetColumnWidthsEvent].
      child: BlocListener<MyoroTableBloc<T>, MyoroTableState<T>>(
        listenWhen: _listenWhen,
        listener: _listener,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: themeExtension.paginationControlsTableSpacing,
          children: [
            if (_configuration.showPaginationControls) _PaginationControls(_tableController),
            Flexible(child: _Table(_configuration)),
          ],
        ),
      ),
    );
  }

  bool _listenWhen(_, MyoroTableState<T> current) {
    final MyoroTableColumnState? columnState = current.columnState;
    return (columnState != null) && (columnState.widths.isEmpty);
  }

  void _listener(_, __) {
    // _bloc.add(const GetColumnWidthsEvent());
  }
}

/// Section where the pagination controls are shown.
final class _PaginationControls<T> extends StatelessWidget {
  final MyoroTableController<T> _tableController;

  const _PaginationControls(this._tableController);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroTableBloc<T>, MyoroTableState<T>>(
      buildWhen: _buildWhen,
      builder: _builder,
    );
  }

  bool _buildWhen(MyoroTableState<T> previous, MyoroTableState<T> current) {
    return previous.pagination != current.pagination;
  }

  Widget _builder(_, MyoroTableState<T> state) {
    final MyoroTablePagination<T> pagination = state.pagination;
    return Row(
      children: [
        if (pagination.acceptedItemsPerPage.isNotEmpty) _ItemsPerPageControl(_tableController),
        const Spacer(),
        if (pagination.totalPages > 1) _PageNumberControl(_tableController),
      ],
    );
  }
}

/// Page number control.
final class _PageNumberControl<T> extends StatelessWidget {
  final MyoroTableController<T> _tableController;

  const _PageNumberControl(this._tableController);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    return BlocBuilder<MyoroTableBloc<T>, MyoroTableState<T>>(
      buildWhen: _buildWhen,
      builder: (_, MyoroTableState<T> state) => _builder(themeExtension, state),
    );
  }

  bool _buildWhen(MyoroTableState<T> previous, MyoroTableState<T> current) {
    return previous.pagination.currentPage != current.pagination.currentPage;
  }

  Widget _builder(MyoroTableThemeExtension themeExtension, MyoroTableState<T> state) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.pageNumberControlSpacing,
      children: [
        _PageNumberControlPreviousPageButton(
          _tableController,
          state.pagination.canTraverseBackward,
        ),
        _PageNumberControlInput(_tableController),
        _PageNumberControlNextPageButton(_tableController, state.pagination.canTraverseForward),
      ],
    );
  }
}

/// [_PageNumberControl] page traversal button.
final class _PageNumberControlTraversalButton extends StatelessWidget {
  final IconData _icon;
  final VoidCallback? _onTapUp;

  const _PageNumberControlTraversalButton(this._icon, this._onTapUp);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    final double pageNumberControlTraversalButtonIconSize =
        themeExtension.pageNumberControlTraversalButtonIconSize;
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        iconConfiguration: MyoroIconTextButtonIconConfiguration(
          icon: _icon,
          size: pageNumberControlTraversalButtonIconSize,
        ),
        borderBuilder: (_) => MyoroButtonVariantEnum.border(context),
        onTapUp: _onTapUp != null ? (_) => _onTapUp() : null,
      ),
    );
  }
}

/// Previous page button of [_PageNumberControl].
final class _PageNumberControlPreviousPageButton<T> extends StatelessWidget {
  final MyoroTableController<T> _tableController;
  final bool _enabled;

  const _PageNumberControlPreviousPageButton(this._tableController, this._enabled);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    return _PageNumberControlTraversalButton(
      themeExtension.pageNumberControlPreviousPageButtonIcon,
      _enabled ? _onPressed : null,
    );
  }

  void _onPressed() {
    _tableController
      ..setCurrentPage(_tableController.pagination.currentPage - 1)
      ..fetch();
  }
}

/// Next page button of [_PageNumberControl].
final class _PageNumberControlNextPageButton<T> extends StatelessWidget {
  final MyoroTableController<T> _tableController;
  final bool _enabled;

  const _PageNumberControlNextPageButton(this._tableController, this._enabled);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    return _PageNumberControlTraversalButton(
      themeExtension.pageNumberControlNextPageButtonIcon,
      _enabled ? _onTapUp : null,
    );
  }

  void _onTapUp() {
    _tableController
      ..setCurrentPage(_tableController.pagination.currentPage + 1)
      ..fetch();
  }
}

/// [_PageNumberControl]'s input that displays the current page and
/// allows the user to change it's value to select a page manually.
final class _PageNumberControlInput<T> extends StatefulWidget {
  final MyoroTableController<T> _tableController;

  const _PageNumberControlInput(this._tableController);

  @override
  State<_PageNumberControlInput<T>> createState() => _PageNumberControlInputState<T>();
}

final class _PageNumberControlInputState<T> extends State<_PageNumberControlInput<T>> {
  MyoroTableController<T> get _tableController => widget._tableController;

  late final MyoroTableBloc<T> _bloc;
  late final TextEditingController _inputController;

  @override
  void initState() {
    super.initState();
    _bloc = context.resolveBloc<MyoroTableBloc<T>>();
    _inputController = TextEditingController(text: _bloc.state.pagination.currentPage.toString())
      ..addListener(_inputControllerListener);
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return IntrinsicWidth(
      child: BlocListener<MyoroTableBloc<T>, MyoroTableState<T>>(
        listenWhen: _listenWhen,
        listener: _listener,
        child: MyoroInput(
          configuration: MyoroInputConfiguration(
            inputStyle: themeExtension.pageNumberControlInputStyle,
            controller: _inputController,
            showClearTextButton: false,
          ),
        ),
      ),
    );
  }

  void _inputControllerListener() {
    final int? pageNumber = int.tryParse(_inputController.text);
    final bool invalidPageNumber =
        pageNumber != null ? _tableController.pagination.isValidPageNumber(pageNumber) : false;
    if (invalidPageNumber) return;
    _tableController
      ..setCurrentPage(pageNumber ?? 1)
      ..fetch();
  }

  bool _listenWhen(MyoroTableState<T> previous, MyoroTableState<T> current) {
    return previous.pagination.currentPage != current.pagination.currentPage;
  }

  void _listener(_, MyoroTableState<T> state) {
    _inputController.text = state.pagination.currentPage.toString();
  }
}

/// Items per page control.
final class _ItemsPerPageControl<T> extends StatelessWidget {
  final MyoroTableController<T> _tableController;

  const _ItemsPerPageControl(this._tableController);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroTableBloc<T>, MyoroTableState<T>>(
      buildWhen: _buildWhen,
      builder: _builder,
    );
  }

  bool _buildWhen(MyoroTableState<T> previous, MyoroTableState<T> current) {
    return previous.pagination.itemsPerPage != current.pagination.itemsPerPage;
  }

  Widget _builder(_, MyoroTableState<T> state) {
    return IntrinsicWidth(
      child: MyoroSingularDropdown<int>(
        configuration: MyoroSingularDropdownConfiguration(
          allowItemClearing: false,
          selectedItemTextAlign: TextAlign.center,
          menuConfiguration: MyoroMenuConfiguration(request: _request, itemBuilder: _itemBuilder),
          selectedItemBuilder: _textBuilder,
          initiallySelectedItem: _tableController.pagination.itemsPerPage,
          onChanged: (int? item) => _onChanged(item!),
        ),
      ),
    );
  }

  Set<int> _request() {
    return _tableController.pagination.acceptedItemsPerPage;
  }

  MyoroMenuItem _itemBuilder(int item) {
    return MyoroMenuItem(
      textConfiguration: MyoroIconTextButtonTextConfiguration(text: _textBuilder(item)),
    );
  }

  String _textBuilder(int item) {
    return item.toString();
  }

  void _onChanged(int item) {
    _tableController
      ..setItemsPerPage(item)
      ..fetch();
  }
}

/// The actual table of [MyoroTable].
final class _Table<T> extends StatelessWidget {
  final MyoroTableConfiguration<T> _configuration;

  const _Table(this._configuration);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    return Container(
      decoration: themeExtension.tableDecoration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_Columns(_configuration), Flexible(child: _RowsSection(_configuration))],
      ),
    );
  }
}

/// Title columns of the [MyoroTable].
final class _Columns<T> extends StatelessWidget {
  final MyoroTableConfiguration<T> _configuration;

  const _Columns(this._configuration);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IntrinsicHeight(
          child: BlocBuilder<MyoroTableBloc<T>, MyoroTableState<T>>(
            buildWhen: _buildWhen,
            builder: _builder,
          ),
        ),
        const _Divider(Axis.horizontal),
      ],
    );
  }

  bool _buildWhen(MyoroTableState<T> previous, MyoroTableState<T> current) {
    return (current.columnState != null) &&
        (previous.columnState?.keys != current.columnState?.keys);
  }

  Widget _builder(BuildContext context, MyoroTableState<T> state) {
    final myoroTableThemeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    final myoroBasicDividerThemeExtension =
        context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();

    return Row(
      // Divided by two to "disable" the dividers from adding spacing.
      //
      // Subtracted by [myoroBasicDividerThemeExtension.shortValue]
      // to remove spacing added from the dividers.
      spacing:
          (myoroTableThemeExtension.columnSpacing / 2) -
          (myoroBasicDividerThemeExtension.shortValue / 2),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _buildColumnWidgets(state.columnState!.keys),
    );
  }

  List<Widget> _buildColumnWidgets(List<GlobalKey> columnKeys) {
    final List<MyoroTableColumn> columns = _configuration.columns;
    final List<Widget> builtColumnWidgets = [];

    for (int i = 0; i < columns.length; i++) {
      final MyoroTableColumn column = columns[i];
      final bool isLastColumn = i == columns.length - 1;

      print('was here');

      builtColumnWidgets.add(_Column(columnKeys[i], column, isLastColumn));
      if (!isLastColumn) {
        builtColumnWidgets.add(_Divider(Axis.vertical, column.resizable ? _dragCallback : null));
      }
    }

    return builtColumnWidgets;
  }

  void _dragCallback(DragUpdateDetails details) {
    // TODO
    print('Hello world');
  }
}

/// Title column of [_Columns].
final class _Column extends StatelessWidget {
  final GlobalKey _key;
  final MyoroTableColumn _column;
  final bool _isLastColumn;

  const _Column(this._key, this._column, this._isLastColumn);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    final child = DefaultTextStyle(style: themeExtension.columnTextStyle, child: _column.child);

    // Last column must always be expanded.
    if (_isLastColumn) {
      return Expanded(key: _key, child: child);
    }

    return switch (_column.widthConfiguration.enumValue) {
      MyoroTableColumnWidthConfigurationEnum.fixed => SizedBox(
        key: _key,
        width: _column.widthConfiguration.fixedWidth!,
        child: child,
      ),
      MyoroTableColumnWidthConfigurationEnum.intrinsic => IntrinsicWidth(key: _key, child: child),
      MyoroTableColumnWidthConfigurationEnum.expanded => Expanded(key: _key, child: child),
    };
  }
}

/// Divider of [MyoroTable].
final class _Divider extends StatelessWidget {
  final Axis _direction;
  final MyoroResizeDividerDragCallback? _dragCallback;

  const _Divider(this._direction, [this._dragCallback]);

  @override
  Widget build(BuildContext context) {
    final configuration = MyoroBasicDividerConfiguration(direction: _direction);

    return (_dragCallback != null)
        ? MyoroResizeDivider(configuration: configuration, dragCallback: _dragCallback)
        : MyoroBasicDivider(configuration: configuration);
  }
}

/// Section where the fetched items (rows) of the table will be.
final class _RowsSection<T> extends StatelessWidget {
  final MyoroTableConfiguration<T> _configuration;

  const _RowsSection(this._configuration);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroTableBloc<T>, MyoroTableState<T>>(
      buildWhen: _buildWhen,
      builder: _builder,
    );
  }

  bool _buildWhen(MyoroTableState<T> previous, MyoroTableState<T> current) {
    return (previous.status != current.status) ||
        (previous.columnState?.widths != current.columnState?.widths);
  }

  Widget _builder(_, MyoroTableState<T> state) {
    if (!state.columnWidthsReady) {
      return const _Loader();
    }

    return switch (state.status) {
      MyoroRequestEnum.idle => const _Loader(),
      MyoroRequestEnum.loading => const _Loader(),
      MyoroRequestEnum.success => _Rows(
        _configuration,
        state.columnState!.widths,
        state.pagination,
      ),
      MyoroRequestEnum.error => _ErrorMessage(state.errorMessage!),
    };
  }
}

/// Loading [Widget] of the [MyoroTable].
final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Padding(
      padding: themeExtension.dialogPadding,
      child: MyoroCircularLoader(size: themeExtension.loaderSize),
    );
  }
}

/// Where the rows of the (successfully) fetched items of the [MyoroTable] are built.
final class _Rows<T> extends StatefulWidget {
  final MyoroTableConfiguration<T> _configuration;
  final List<double> _columnWidths;
  final MyoroTablePagination<T> _pagination;

  const _Rows(this._configuration, this._columnWidths, this._pagination);

  @override
  State<_Rows<T>> createState() => _RowsState<T>();
}

final class _RowsState<T> extends State<_Rows<T>> {
  MyoroTableConfiguration<T> get _configuration => widget._configuration;
  List<double> get _columnWidths => widget._columnWidths;
  MyoroTablePagination<T> get _pagination => widget._pagination;

  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _items.isEmpty ? const _EmptyMessage() : MyoroLayoutBuilder(builder: _builder);
  }

  Widget _builder(BuildContext context, __) {
    return Scrollbar(
      controller: _scrollController,
      thumbVisibility: true,
      child: ListView.builder(
        controller: _scrollController,
        shrinkWrap: true,
        itemCount: _items.length,
        itemBuilder: _itemBuilder,
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return MyoroButton(
      configuration: MyoroButtonConfiguration(
        borderRadius: BorderRadius.zero,
        // TODO
        onTapUp: (_) => throw UnimplementedError(),
      ),
      builder: (_, __) {
        return Row(spacing: themeExtension.columnSpacing, children: _buildCells(_items[index]));
      },
    );
  }

  List<Widget> _buildCells(T item) {
    final MyoroTableRow<T> row = _configuration.rowBuilder(item);
    final List<Widget> cells = row.cells;

    assert(
      _columnWidths.length == cells.length,
      '[MyoroTable._Rows]: # of [Widget]s in [MyoroTableRow.cells] '
      'must be equal to the length of [MyoroTableConfiguration.columns].',
    );

    final builtCells = <Widget>[];

    for (int i = 0; i < cells.length; i++) {
      final Widget cell = cells[i];

      if (i != cells.length - 1) {
        builtCells.add(SizedBox(width: _columnWidths[i], child: cell));
      } else {
        builtCells.add(Expanded(child: cell));
      }
    }

    return builtCells;
  }

  List<T> get _items => _pagination.items;
}

/// Empty message when there are no items to display.
final class _EmptyMessage extends StatelessWidget {
  const _EmptyMessage();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    return Padding(
      padding: themeExtension.dialogPadding,
      child: Text('No items to display!', style: themeExtension.emptyMessageTextStyle),
    );
  }
}

/// Error message displayed when the items were fetched unsuccessfully.
final class _ErrorMessage extends StatelessWidget {
  final String _message;

  const _ErrorMessage(this._message);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Padding(
      padding: themeExtension.dialogPadding,
      child: Text(
        _message,
        textAlign: TextAlign.center,
        style: themeExtension.errorMessageTextStyle,
      ),
    );
  }
}
