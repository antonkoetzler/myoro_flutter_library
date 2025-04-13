import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/blocs/myoro_table_v2_bloc/myoro_table_v2_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Table of MFL.
final class MyoroTableV2<T> extends StatefulWidget {
  /// Configuration of [MyoroTableV2].
  final MyoroTableV2Configuration<T> configuration;

  const MyoroTableV2({super.key, required this.configuration});

  @override
  State<MyoroTableV2<T>> createState() => _MyoroTableV2State<T>();
}

final class _MyoroTableV2State<T> extends State<MyoroTableV2<T>> {
  MyoroTableV2Configuration<T> get _configuration => widget.configuration;

  MyoroTableV2Controller<T>? _localController;
  MyoroTableV2Controller<T> get _controller {
    return _configuration.controller ??
        (_localController ??= MyoroTableV2Controller());
  }

  /// Central [Bloc] of [MyoroTableV2].
  late final MyoroTableV2Bloc<T> _bloc;

  /// [GlobalKey]s of [_TitleCell]s.
  late List<GlobalKey> _titleCellKeys;

  @override
  void initState() {
    super.initState();
    _bloc = MyoroTableV2Bloc(_configuration);
    _controller.bloc = _bloc;
    _controller.fetch();
    _initializeTitleCellKeys();
  }

  @override
  void didUpdateWidget(covariant MyoroTableV2<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _initializeTitleCellKeys();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: _Table(_configuration, _titleCellKeys),
    );
  }

  void _initializeTitleCellKeys() {
    _titleCellKeys =
        _configuration.titleCells.map<GlobalKey>((_) => GlobalKey()).toList();
  }
}

/// The actual table of [MyoroTableV2].
final class _Table<T> extends StatelessWidget {
  final MyoroTableV2Configuration<T> _configuration;
  final List<GlobalKey> _titleCellKeys;

  const _Table(this._configuration, this._titleCellKeys);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();
    return Container(
      decoration: themeExtension.tableDecoration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _TitleCells(_configuration, _titleCellKeys),
          Flexible(child: _RowsSection(_configuration, _titleCellKeys)),
        ],
      ),
    );
  }
}

/// Title columns of the [MyoroTableV2].
final class _TitleCells extends StatelessWidget {
  final MyoroTableV2Configuration _configuration;
  final List<GlobalKey> _titleCellKeys;

  const _TitleCells(this._configuration, this._titleCellKeys);

  @override
  Widget build(BuildContext context) {
    final myoroTableV2ThemeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();
    final myoroBasicDividerThemeExtension =
        context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IntrinsicHeight(
          child: Row(
            // Divided by two to "disable" the dividers from adding spacing.
            //
            // Subtracted by [myoroBasicDividerThemeExtension.shortValue]
            // to remove spacing added from the dividers.
            spacing:
                (myoroTableV2ThemeExtension.columnSpacing / 2) -
                (myoroBasicDividerThemeExtension.shortValue / 2),
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _builtTitleCellWidgets,
          ),
        ),
        const _Divider(Axis.horizontal),
      ],
    );
  }

  List<Widget> get _builtTitleCellWidgets {
    final List<MyoroTableV2Column> titleCells = _configuration.titleCells;
    final List<Widget> builtTitleCellWidgets = [];

    const divider = _Divider(Axis.vertical);

    for (int i = 0; i < titleCells.length; i++) {
      final bool isLastColumn = i == titleCells.length - 1;
      builtTitleCellWidgets.add(
        _TitleCell(_titleCellKeys[i], titleCells[i], isLastColumn),
      );
      if (!isLastColumn) builtTitleCellWidgets.add(divider);
    }

    return builtTitleCellWidgets;
  }
}

/// Title column of [_TitleCells].
final class _TitleCell extends StatelessWidget {
  final GlobalKey _key;
  final MyoroTableV2Column _column;
  final bool _isLastColumn;

  const _TitleCell(this._key, this._column, this._isLastColumn);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();

    final child = DefaultTextStyle(
      style: themeExtension.titleCellTextStyle,
      child: _column.child,
    );

    // Last column must always be expanded.
    if (_isLastColumn) {
      return Expanded(key: _key, child: child);
    }

    return switch (_column.widthConfiguration.enumValue) {
      MyoroTableV2ColumnWidthConfigurationEnum.fixed => SizedBox(
        key: _key,
        width: _column.widthConfiguration.fixedWidth!,
        child: child,
      ),
      MyoroTableV2ColumnWidthConfigurationEnum.intrinsic => IntrinsicWidth(
        key: _key,
        child: child,
      ),
      MyoroTableV2ColumnWidthConfigurationEnum.expanded => Expanded(
        key: _key,
        child: child,
      ),
    };
  }
}

/// Divider of [MyoroTableV2].
final class _Divider extends StatelessWidget {
  final Axis _direction;

  const _Divider(this._direction);

  @override
  Widget build(BuildContext context) {
    return MyoroBasicDivider(
      configuration: MyoroBasicDividerConfiguration(direction: _direction),
    );
  }
}

/// Section where the fetched items (rows) of the table will be.
final class _RowsSection<T> extends StatelessWidget {
  final MyoroTableV2Configuration<T> _configuration;
  final List<GlobalKey> _titleCellKeys;

  const _RowsSection(this._configuration, this._titleCellKeys);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroTableV2Bloc<T>, MyoroTableV2State<T>>(
      buildWhen: _buildWhen,
      builder: (_, MyoroTableV2State<T> state) {
        return _builder(state);
      },
    );
  }

  bool _buildWhen(MyoroTableV2State<T> previous, MyoroTableV2State<T> current) {
    return previous.status != current.status;
  }

  Widget _builder(MyoroTableV2State<T> state) {
    return switch (state.status) {
      MyoroRequestEnum.idle => const _Loader(),
      MyoroRequestEnum.loading => const _Loader(),
      MyoroRequestEnum.success => _Rows(
        _configuration,
        _titleCellKeys,
        state.pagination,
      ),
      MyoroRequestEnum.error => _ErrorMessage(state.errorMessage!),
    };
  }
}

/// Loading [Widget] of the [MyoroTableV2].
final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();

    return Padding(
      padding: themeExtension.dialogPadding,
      child: MyoroCircularLoader(size: themeExtension.loaderSize),
    );
  }
}

/// Where the rows of the (successfully) fetched items of the [MyoroTableV2] are built.
final class _Rows<T> extends StatefulWidget {
  final MyoroTableV2Configuration<T> _configuration;
  final List<GlobalKey> _titleCellKeys;
  final MyoroTableV2Pagination<T> _pagination;

  const _Rows(this._configuration, this._titleCellKeys, this._pagination);

  @override
  State<_Rows<T>> createState() => _RowsState<T>();
}

final class _RowsState<T> extends State<_Rows<T>> {
  MyoroTableV2Configuration<T> get _configuration => widget._configuration;
  List<GlobalKey> get _titleCellKeys => widget._titleCellKeys;
  MyoroTableV2Pagination<T> get _pagination => widget._pagination;

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
    final tableThemeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();
    final hoverButtonThemeExtension =
        context.resolveThemeExtension<MyoroHoverButtonThemeExtension>();

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
              onPrimaryColor: hoverButtonThemeExtension.onPrimaryColor
                  .withValues(alpha: 0.1),
              borderRadius: BorderRadius.zero,
            ),
            builder: (bool isHovered, __, ___) {
              return Row(
                spacing: tableThemeExtension.columnSpacing,
                children: _buildCells(_items[index], isHovered),
              );
            },
          );
        },
      ),
    );
  }

  List<Widget> _buildCells(T item, bool isHovered) {
    final MyoroTableV2Row<T> row = _configuration.rowBuilder(item);
    final List<Widget> cells = row.cells;

    assert(
      _titleCellKeys.length == cells.length,
      '[MyoroTableV2._Rows]: # of [Widget]s in [MyoroTableV2Row.cells] '
      'must be equal to the length of [MyoroTableV2Configuration.titleCells].',
    );

    final builtCells = <Widget>[];

    for (int i = 0; i < cells.length; i++) {
      final Widget cell = cells[i];

      if (i != cells.length - 1) {
        final titleCellWidthRenderBox =
            _titleCellKeys[i].currentContext?.findRenderObject() as RenderBox?;
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
    final themeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();
    return Padding(
      padding: themeExtension.dialogPadding,
      child: Text(
        'No items to display!',
        style: themeExtension.emptyMessageTextStyle,
      ),
    );
  }
}

/// Error message displayed when the items were fetched unsuccessfully.
final class _ErrorMessage extends StatelessWidget {
  final String _message;

  const _ErrorMessage(this._message);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();

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
