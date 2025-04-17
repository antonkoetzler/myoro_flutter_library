import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/blocs/myoro_table_bloc/myoro_table_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Table of MFL.
final class MyoroTable<T> extends StatefulWidget {
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

  /// [GlobalKey]s of [_TitleCell]s.
  late List<GlobalKey> _titleCellKeys;

  @override
  void initState() {
    super.initState();
    _bloc = MyoroTableBloc(_configuration);
    _tableController.bloc = _bloc;
    _tableController.fetch();
    _initializeTitleCellKeys();
  }

  @override
  void didUpdateWidget(covariant MyoroTable<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _tableController.bloc = _bloc;
    _initializeTitleCellKeys();
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: themeExtension.paginationControlsTableSpacing,
        children: [
          if (_configuration.showPaginationControls) ...[_PaginationControls(_tableController)],
          Flexible(child: _Table(_configuration, _titleCellKeys)),
        ],
      ),
    );
  }

  void _initializeTitleCellKeys() {
    _titleCellKeys = _configuration.titleCells.map<GlobalKey>((_) => GlobalKey()).toList();
  }
}

/// Section where the pagination controls are shown.
final class _PaginationControls<T> extends StatelessWidget {
  final MyoroTableController<T> _tableController;

  const _PaginationControls(this._tableController);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroTableBloc<T>, MyoroTableState<T>>(buildWhen: _buildWhen, builder: _builder);
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
    return BlocBuilder<MyoroTableBloc<T>, MyoroTableState<T>>(buildWhen: _buildWhen, builder: (_, MyoroTableState<T> state) => _builder(themeExtension, state));
  }

  bool _buildWhen(MyoroTableState<T> previous, MyoroTableState<T> current) {
    return previous.pagination.currentPage != current.pagination.currentPage;
  }

  Widget _builder(MyoroTableThemeExtension themeExtension, MyoroTableState<T> state) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.pageNumberControlSpacing,
      children: [
        _PageNumberControlPreviousPageButton(_tableController, state.pagination.canTraverseBackward),
        _PageNumberControlInput(_tableController),
        _PageNumberControlNextPageButton(_tableController, state.pagination.canTraverseForward),
      ],
    );
  }
}

/// [_PageNumberControl] page traversal button.
final class _PageNumberControlTraversalButton extends StatelessWidget {
  final IconData _icon;
  final VoidCallback? _onPressed;

  const _PageNumberControlTraversalButton(this._icon, this._onPressed);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    return MyoroIconTextHoverButton(
      icon: _icon,
      iconSize: themeExtension.pageNumberControlTraversalButtonIconSize,
      onPressed: _onPressed,
      configuration: themeExtension.pageNumberControlTraversalButtonConfiguration,
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
    return _PageNumberControlTraversalButton(themeExtension.pageNumberControlPreviousPageButtonIcon, _enabled ? _onPressed : null);
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
    return _PageNumberControlTraversalButton(themeExtension.pageNumberControlNextPageButtonIcon, _enabled ? _onPressed : null);
  }

  void _onPressed() {
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
    _inputController = TextEditingController(text: _bloc.state.pagination.currentPage.toString())..addListener(_inputControllerListener);
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
    final bool invalidPageNumber = pageNumber != null ? _tableController.pagination.isValidPageNumber(pageNumber) : false;
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
    return BlocBuilder<MyoroTableBloc<T>, MyoroTableState<T>>(buildWhen: _buildWhen, builder: _builder);
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
    return MyoroMenuItem(text: _textBuilder(item));
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
  final List<GlobalKey> _titleCellKeys;

  const _Table(this._configuration, this._titleCellKeys);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    return Container(
      decoration: themeExtension.tableDecoration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_TitleCells(_configuration, _titleCellKeys), Flexible(child: _RowsSection(_configuration, _titleCellKeys))],
      ),
    );
  }
}

/// Title columns of the [MyoroTable].
final class _TitleCells extends StatelessWidget {
  final MyoroTableConfiguration _configuration;
  final List<GlobalKey> _titleCellKeys;

  const _TitleCells(this._configuration, this._titleCellKeys);

  @override
  Widget build(BuildContext context) {
    final myoroTableThemeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    final myoroBasicDividerThemeExtension = context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IntrinsicHeight(
          child: Row(
            // Divided by two to "disable" the dividers from adding spacing.
            //
            // Subtracted by [myoroBasicDividerThemeExtension.shortValue]
            // to remove spacing added from the dividers.
            spacing: (myoroTableThemeExtension.columnSpacing / 2) - (myoroBasicDividerThemeExtension.shortValue / 2),
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _builtTitleCellWidgets,
          ),
        ),
        const _Divider(Axis.horizontal),
      ],
    );
  }

  List<Widget> get _builtTitleCellWidgets {
    final List<MyoroTableColumn> titleCells = _configuration.titleCells;
    final List<Widget> builtTitleCellWidgets = [];

    const divider = _Divider(Axis.vertical);

    for (int i = 0; i < titleCells.length; i++) {
      final bool isLastColumn = i == titleCells.length - 1;
      builtTitleCellWidgets.add(_TitleCell(_titleCellKeys[i], titleCells[i], isLastColumn));
      if (!isLastColumn) builtTitleCellWidgets.add(divider);
    }

    return builtTitleCellWidgets;
  }
}

/// Title column of [_TitleCells].
final class _TitleCell extends StatelessWidget {
  final GlobalKey _key;
  final MyoroTableColumn _column;
  final bool _isLastColumn;

  const _TitleCell(this._key, this._column, this._isLastColumn);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    final child = DefaultTextStyle(style: themeExtension.titleCellTextStyle, child: _column.child);

    // Last column must always be expanded.
    if (_isLastColumn) {
      return Expanded(key: _key, child: child);
    }

    return switch (_column.widthConfiguration.enumValue) {
      MyoroTableColumnWidthConfigurationEnum.fixed => SizedBox(key: _key, width: _column.widthConfiguration.fixedWidth!, child: child),
      MyoroTableColumnWidthConfigurationEnum.intrinsic => IntrinsicWidth(key: _key, child: child),
      MyoroTableColumnWidthConfigurationEnum.expanded => Expanded(key: _key, child: child),
    };
  }
}

/// Divider of [MyoroTable].
final class _Divider extends StatelessWidget {
  final Axis _direction;

  const _Divider(this._direction);

  @override
  Widget build(BuildContext context) {
    return MyoroBasicDivider(configuration: MyoroBasicDividerConfiguration(direction: _direction));
  }
}

/// Section where the fetched items (rows) of the table will be.
final class _RowsSection<T> extends StatelessWidget {
  final MyoroTableConfiguration<T> _configuration;
  final List<GlobalKey> _titleCellKeys;

  const _RowsSection(this._configuration, this._titleCellKeys);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroTableBloc<T>, MyoroTableState<T>>(
      buildWhen: _buildWhen,
      builder: (_, MyoroTableState<T> state) {
        return _builder(state);
      },
    );
  }

  bool _buildWhen(MyoroTableState<T> previous, MyoroTableState<T> current) {
    return previous.status != current.status;
  }

  Widget _builder(MyoroTableState<T> state) {
    return switch (state.status) {
      MyoroRequestEnum.idle => const _Loader(),
      MyoroRequestEnum.loading => const _Loader(),
      MyoroRequestEnum.success => _Rows(_configuration, _titleCellKeys, state.pagination),
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

    return Padding(padding: themeExtension.dialogPadding, child: MyoroCircularLoader(size: themeExtension.loaderSize));
  }
}

/// Where the rows of the (successfully) fetched items of the [MyoroTable] are built.
final class _Rows<T> extends StatefulWidget {
  final MyoroTableConfiguration<T> _configuration;
  final List<GlobalKey> _titleCellKeys;
  final MyoroTablePagination<T> _pagination;

  const _Rows(this._configuration, this._titleCellKeys, this._pagination);

  @override
  State<_Rows<T>> createState() => _RowsState<T>();
}

final class _RowsState<T> extends State<_Rows<T>> {
  MyoroTableConfiguration<T> get _configuration => widget._configuration;
  List<GlobalKey> get _titleCellKeys => widget._titleCellKeys;
  MyoroTablePagination<T> get _pagination => widget._pagination;

  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_items.isEmpty) {
      return const _EmptyMessage();
    }

    return MyoroLayoutBuilder(builder: _builder);
  }

  Widget _builder(BuildContext context, __) {
    final tableThemeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    final hoverButtonThemeExtension = context.resolveThemeExtension<MyoroHoverButtonThemeExtension>();

    return Scrollbar(
      controller: _scrollController,
      thumbVisibility: true,
      child: ListView.builder(
        controller: _scrollController,
        shrinkWrap: true,
        itemCount: _items.length,
        itemBuilder: (_, int index) {
          return MyoroHoverButton(
            onPressed: () => throw UnimplementedError(),
            configuration: MyoroHoverButtonConfiguration(
              primaryColor: MyoroColorDesignSystem.transparent,
              onPrimaryColor: hoverButtonThemeExtension.onPrimaryColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.zero,
            ),
            builder: (bool isHovered, __, ___) {
              return Row(spacing: tableThemeExtension.columnSpacing, children: _buildCells(_items[index], isHovered));
            },
          );
        },
      ),
    );
  }

  List<Widget> _buildCells(T item, bool isHovered) {
    final MyoroTableRow<T> row = _configuration.rowBuilder(item);
    final List<Widget> cells = row.cells;

    assert(
      _titleCellKeys.length == cells.length,
      '[MyoroTable._Rows]: # of [Widget]s in [MyoroTableRow.cells] '
      'must be equal to the length of [MyoroTableConfiguration.titleCells].',
    );

    final builtCells = <Widget>[];

    for (int i = 0; i < cells.length; i++) {
      final Widget cell = cells[i];

      if (i != cells.length - 1) {
        final titleCellWidthRenderBox = _titleCellKeys[i].currentContext?.findRenderObject() as RenderBox?;
        final double? titleCellWidth = titleCellWidthRenderBox?.size.width;

        builtCells.add(SizedBox(width: titleCellWidth, child: cell));
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
    return Padding(padding: themeExtension.dialogPadding, child: Text('No items to display!', style: themeExtension.emptyMessageTextStyle));
  }
}

/// Error message displayed when the items were fetched unsuccessfully.
final class _ErrorMessage extends StatelessWidget {
  final String _message;

  const _ErrorMessage(this._message);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Padding(padding: themeExtension.dialogPadding, child: Text(_message, textAlign: TextAlign.center, style: themeExtension.errorMessageTextStyle));
  }
}
