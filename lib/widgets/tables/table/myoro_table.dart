import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Table of MFL.
///
/// Fairly simple implementation as tables are usually very business logic specific.
/// Thus, extensibility is more important than being feature rich in this senario.
class MyoroTable<T> extends StatefulWidget {
  /// Configuration.
  final MyoroTableConfiguration<T> configuration;

  const MyoroTable({super.key, required this.configuration});

  @override
  State<MyoroTable<T>> createState() => _MyoroTableState<T>();
}

final class _MyoroTableState<T> extends State<MyoroTable<T>> {
  MyoroTableConfiguration<T> get _configuration => widget.configuration;

  MyoroTableController<T>? _localController;
  MyoroTableController<T> get _controller {
    return _configuration.controller ?? (_localController ??= MyoroTableController(_configuration));
  }

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  void didUpdateWidget(covariant MyoroTable<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.configuration = _configuration;
  }

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Container(
      decoration: themeExtension.decoration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IntrinsicHeight(child: _Columns(_controller)),
          const _Divider(Axis.horizontal),
          Flexible(child: _RowsSection(_controller)),
        ],
      ),
    );
  }
}

final class _Columns<T> extends StatelessWidget {
  final MyoroTableController<T> _controller;
  MyoroTableConfiguration<T> get _configuration => _controller.configuration;
  List<MyoroTableColumn> get _columns => _configuration.columns;
  List<GlobalKey> get _titleColumnKeys => _controller.titleColumnKeys;

  const _Columns(this._controller);

  @override
  Widget build(BuildContext context) {
    final tableThemeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    final basicDividerThemeExtension = context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();

    final decorationBorderRadius = tableThemeExtension.decoration.borderRadius as BorderRadius;

    // Empty [MyoroLayoutBuilder] to rebuild [_Columns] everytime the screen is resized.
    return MyoroLayoutBuilder(
      builder: (_, __) {
        return ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.only(
            topLeft: decorationBorderRadius.topLeft,
            topRight: decorationBorderRadius.topRight,
          ),
          child: Row(
            // Equation to omit spacing of inserted [_Divider] [Widget]s in [_buildColumns].
            spacing: (tableThemeExtension.columnSpacing / 2) - (basicDividerThemeExtension.shortValue / 2),
            children: _buildColumns(context),
          ),
        );
      },
    );
  }

  List<Widget> _buildColumns(BuildContext context) {
    assert(
      _columns.length == _titleColumnKeys.length,
      '[MyoroTable<$T>._buildColumns]: Length of [columns] must be equal to the length of [titleColumnKeys]',
    );

    final List<Widget> widgets = [];
    for (int i = 0; i < _columns.length; i++) {
      final GlobalKey titleColumnKey = _titleColumnKeys[i];
      final MyoroTableColumn column = _columns[i];
      final bool isLastColumn = (i == _columns.length - 1);
      widgets.add(_Column(titleColumnKey, column, isLastColumn));
      if (!isLastColumn) {
        widgets.add(const _Divider(Axis.vertical));
      }
    }

    _controller.getTitleColumnKeyWidths();

    return widgets;
  }
}

final class _Column extends StatelessWidget {
  final MyoroTableColumn _column;
  final bool _isLastColumn;

  const _Column(Key? key, this._column, this._isLastColumn) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    final Widget child = DefaultTextStyle(
      style: themeExtension.columnTextStyle,
      child:
          _column.tooltipMessage != null
              ? MyoroTooltip(
                configuration: MyoroTooltipConfiguration(text: _column.tooltipMessage!),
                child: _column.child,
              )
              : _column.child,
    );

    // Last [MyoroTableColumn] must always be expanded.
    if (_isLastColumn) {
      return Expanded(child: child);
    }

    return switch (_column.widthConfiguration.typeEnum) {
      MyoroTableColumnWidthConfigurationEnum.expanded => Expanded(child: child),
      MyoroTableColumnWidthConfigurationEnum.intrinsic => IntrinsicWidth(child: child),
      MyoroTableColumnWidthConfigurationEnum.fixed => SizedBox(
        width: _column.widthConfiguration.fixedWidth,
        child: child,
      ),
    };
  }
}

final class _RowsSection<T> extends StatelessWidget {
  final MyoroTableController<T> _controller;
  MyoroRequestController<Set<T>> get _itemsRequestController => _controller.itemsRequestController;
  MyoroRequest<Set<T>> get _itemsRequest => _controller.itemsRequest;

  const _RowsSection(this._controller);

  @override
  Widget build(_) {
    // return BlocBuilder<MyoroTableBloc<T>, MyoroTableState<T>>(buildWhen: _buildWhen, builder: _builder);
    return ValueListenableBuilder(valueListenable: _itemsRequestController, builder: (_, __, ___) => _builder());
  }

  Widget _builder() {
    return switch (_itemsRequest.status) {
      MyoroRequestEnum.idle => const _Loader(),
      MyoroRequestEnum.loading => const _Loader(),
      MyoroRequestEnum.success => _Rows(_controller),
      MyoroRequestEnum.error => _ErrorMessage(_itemsRequest.errorMessage!),
    };
  }
}

final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Padding(padding: themeExtension.loaderEmptyMessageErrorMessagePadding, child: const MyoroCircularLoader());
  }
}

final class _Rows<T> extends StatelessWidget {
  final MyoroTableController<T> _controller;
  Set<T> get _items => _controller.itemsRequest.data!;
  ValueNotifier<List<double>> get _titleColumnKeyWidthsNotifier => _controller.titleColumnKeyWidthsNotifier;
  List<double> get _titleColumnKeyWidths => _controller.titleColumnKeyWidths;

  const _Rows(this._controller);

  @override
  Widget build(BuildContext context) {
    if (_items.isEmpty) {
      return const _EmptyMessage();
    }

    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: _titleColumnKeyWidthsNotifier,
      builder: (_, __, ___) => _builder(themeExtension),
    );
  }

  Widget _builder(MyoroTableThemeExtension themeExtension) {
    // Empty case as there cannot be 0 [MyoroTableColumn]s in a [MyoroTable].
    if (_titleColumnKeyWidths.isEmpty) {
      return const _Loader();
    }

    final decorationBorderRadius = themeExtension.decoration.borderRadius as BorderRadius;

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.only(
        bottomLeft: decorationBorderRadius.bottomLeft,
        bottomRight: decorationBorderRadius.bottomRight,
      ),
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (_, int index) => _Row(_items.elementAt(index), _controller),
      ),
    );
  }
}

final class _Row<T> extends StatelessWidget {
  final T _item;
  final MyoroTableController<T> _controller;
  MyoroTableConfiguration<T> get _configuration => _controller.configuration;
  MyoroTableConfigurationRowBuilder<T> get _rowBuilder => _configuration.rowBuilder;
  List<double> get _titleColumnKeyWidths => _controller.titleColumnKeyWidths;

  const _Row(this._item, this._controller);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    final MyoroTableRow<T> row = _rowBuilder(_item);
    final MyoroTableRowTapEvent<T>? onTapDown = row.onTapDown;
    final MyoroTableRowTapEvent<T>? onTapUp = row.onTapUp;
    final List<Widget> cells = row.cells;

    assert(
      _titleColumnKeyWidths.length == cells.length,
      '[_Rows<$T>._itemBuilder]: Length of [columns] must be the same as the length of [cells].',
    );

    return DefaultTextStyle(
      style: themeExtension.rowTextStyle,
      child: MyoroButton(
        configuration: MyoroButtonConfiguration(
          borderRadius: BorderRadius.zero,
          onTapDown: (onTapDown != null) ? (_) => onTapDown(_item) : null,
          onTapUp: (onTapUp != null) ? (_) => onTapUp(_item) : null,
        ),
        builder: (_, MyoroTapStatusEnum tapStatusEnum) {
          return Row(
            spacing: themeExtension.columnSpacing,
            children: [
              for (int i = 0; i < cells.length; i++) ...[
                (i == cells.length - 1)
                    ? Expanded(child: cells[i])
                    : SizedBox(width: _titleColumnKeyWidths[i], child: cells[i]),
              ],
            ],
          );
        },
      ),
    );
  }
}

final class _EmptyMessage extends StatelessWidget {
  const _EmptyMessage();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Text('No items were found!', style: themeExtension.emptyMessageTextStyle);
  }
}

final class _ErrorMessage extends StatelessWidget {
  final String _errorMessage;

  const _ErrorMessage(this._errorMessage);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Text(_errorMessage, style: themeExtension.errorMessageTextStyle);
  }
}

final class _Divider extends StatelessWidget {
  final Axis _direction;

  const _Divider(this._direction);

  @override
  Widget build(_) {
    final configuration = MyoroBasicDividerConfiguration(direction: _direction);
    return MyoroBasicDivider(configuration: configuration);
  }
}
