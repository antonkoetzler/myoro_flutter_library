import 'dart:async';
import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/blocs/myoro_table_bloc/myoro_table_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '../../theme_extensions/tables/myoro_table_theme_extension.dart';

/// Table of MFL.
///
/// Fairly simple implementation as tables are usually very business logic specific.
/// Thus, extensibility is more important than being feature rich in this senario.
class MyoroTable<T> extends StatefulWidget {
  /// Controller.
  ///
  /// Not within [MyoroTableConfiguration] to reduce circular dependency risks and to also
  /// increase legibility by not having to alter [configuration] to initialize the controller.
  final MyoroTableController<T>? controller;

  /// Configuration.
  final MyoroTableConfiguration<T> configuration;

  const MyoroTable({super.key, this.controller, required this.configuration});

  @override
  State<MyoroTable<T>> createState() => _MyoroTableState<T>();
}

final class _MyoroTableState<T> extends State<MyoroTable<T>> {
  MyoroTableConfiguration<T> get _configuration => widget.configuration;

  MyoroTableController<T>? _localController;
  MyoroTableController<T> get _controller {
    final MyoroTableController<T> controller =
        widget.controller ?? (_localController ??= MyoroTableController());
    controller.bloc = _bloc;
    return controller;
  }

  final _bloc = MyoroTableBloc<T>();

  @override
  void initState() {
    super.initState();
    _bloc.configuration = _configuration;
    _controller.fetch();
  }

  @override
  void didUpdateWidget(covariant MyoroTable<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _bloc.configuration = _configuration;
  }

  @override
  void dispose() {
    unawaited(_bloc.close());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableThemeExtension>();

    return BlocProvider.value(
      value: _bloc,
      child: Container(
        decoration: themeExtension.decoration,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IntrinsicHeight(child: _Columns<T>()),
            const _Divider(Axis.horizontal),
            Flexible(child: _RowsSection<T>()),
          ],
        ),
      ),
    );
  }
}

final class _Columns<T> extends StatelessWidget {
  const _Columns();

  @override
  Widget build(BuildContext context) {
    final tableThemeExtension =
        context.resolveThemeExtension<MyoroTableThemeExtension>();
    final basicDividerThemeExtension =
        context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();

    final decorationBorderRadius =
        tableThemeExtension.decoration.borderRadius as BorderRadius;

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
            spacing:
                (tableThemeExtension.columnSpacing / 2) -
                (basicDividerThemeExtension.shortValue / 2),
            children: _buildColumns(context),
          ),
        );
      },
    );
  }

  List<Widget> _buildColumns(BuildContext context) {
    final MyoroTableBloc<T> bloc = context.resolveBloc<MyoroTableBloc<T>>();
    final List<MyoroTableColumn> columns = bloc.configuration.columns;
    final List<GlobalKey> titleColumnKeys = bloc.titleColumnKeys;
    final ValueNotifier<List<double>> titleColumnKeyWidthsNotifier =
        bloc.titleColumnKeyWidthsNotifier;

    assert(
      columns.length == titleColumnKeys.length,
      '[MyoroTable<$T>._buildColumns]: Length of [columns] must be equal to the length of [titleColumnKeys]',
    );

    final List<Widget> widgets = [];
    for (int i = 0; i < columns.length; i++) {
      final GlobalKey titleColumnKey = titleColumnKeys[i];
      final MyoroTableColumn column = columns[i];
      final bool isLastColumn = (i == columns.length - 1);
      widgets.add(_Column(titleColumnKey, column, isLastColumn));
      if (!isLastColumn) {
        widgets.add(const _Divider(Axis.vertical));
      }
    }

    // Before returning [widgets], we schedule the post-frame
    // callback in order to set [titleColumnKeyWidthsNotifier].
    WidgetsBinding.instance.addPostFrameCallback((_) {
      titleColumnKeyWidthsNotifier.value =
          titleColumnKeys.map<double>((GlobalKey titleColumnKey) {
            final renderBox =
                titleColumnKey.currentContext!.findRenderObject() as RenderBox;
            return renderBox.size.width;
          }).toList();
    });

    return widgets;
  }
}

final class _Column extends StatelessWidget {
  final MyoroTableColumn _column;
  final bool _isLastColumn;

  const _Column(Key? key, this._column, this._isLastColumn) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableThemeExtension>();

    final Widget child = DefaultTextStyle(
      style: themeExtension.columnTextStyle,
      child:
          _column.tooltipMessage != null
              ? MyoroTooltip(
                configuration: MyoroTooltipConfiguration(
                  text: _column.tooltipMessage!,
                ),
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
      MyoroTableColumnWidthConfigurationEnum.intrinsic => IntrinsicWidth(
        child: child,
      ),
      MyoroTableColumnWidthConfigurationEnum.fixed => SizedBox(
        width: _column.widthConfiguration.fixedWidth,
        child: child,
      ),
    };
  }
}

final class _RowsSection<T> extends StatelessWidget {
  const _RowsSection();

  @override
  Widget build(_) {
    return BlocBuilder<MyoroTableBloc<T>, MyoroTableState<T>>(
      buildWhen: _buildWhen,
      builder: _builder,
    );
  }

  bool _buildWhen(MyoroTableState<T> previous, MyoroTableState<T> current) {
    return (previous.status != current.status);
  }

  Widget _builder(_, MyoroTableState<T> state) {
    return switch (state.status) {
      MyoroRequestEnum.idle => const _Loader(),
      MyoroRequestEnum.loading => const _Loader(),
      MyoroRequestEnum.success => _Rows(state.items!),
      MyoroRequestEnum.error => _ErrorMessage(state.errorMessage!),
    };
  }
}

final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Padding(
      padding: themeExtension.loaderEmptyMessageErrorMessagePadding,
      child: const MyoroCircularLoader(),
    );
  }
}

final class _Rows<T> extends StatelessWidget {
  final Set<T> _items;

  const _Rows(this._items);

  @override
  Widget build(BuildContext context) {
    if (_items.isEmpty) {
      return const _EmptyMessage();
    }

    final themeExtension =
        context.resolveThemeExtension<MyoroTableThemeExtension>();

    final MyoroTableBloc<T> bloc = context.resolveBloc<MyoroTableBloc<T>>();
    final ValueNotifier<List<double>> titleColumnKeyWidthsNotifier =
        bloc.titleColumnKeyWidthsNotifier;

    return ValueListenableBuilder(
      valueListenable: titleColumnKeyWidthsNotifier,
      builder: (_, List<double> titleColumnKeyWidths, __) {
        return _builder(themeExtension, titleColumnKeyWidths);
      },
    );
  }

  Widget _builder(
    MyoroTableThemeExtension themeExtension,
    List<double> titleColumnKeyWidths,
  ) {
    // Empty case as there cannot be 0 [MyoroTableColumn]s in a [MyoroTable].
    if (titleColumnKeyWidths.isEmpty) {
      return const _Loader();
    }

    final decorationBorderRadius =
        themeExtension.decoration.borderRadius as BorderRadius;

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.only(
        bottomLeft: decorationBorderRadius.bottomLeft,
        bottomRight: decorationBorderRadius.bottomRight,
      ),
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (_, int index) {
          return _Row(_items.elementAt(index), titleColumnKeyWidths);
        },
      ),
    );
  }
}

final class _Row<T> extends StatelessWidget {
  final T _item;
  final List<double> _titleColumnKeyWidths;

  const _Row(this._item, this._titleColumnKeyWidths);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableThemeExtension>();

    final MyoroTableBloc<T> bloc = context.resolveBloc<MyoroTableBloc<T>>();
    final MyoroTableConfiguration<T> configuration = bloc.configuration;
    final MyoroTableConfigurationRowBuilder<T> rowBuilder =
        configuration.rowBuilder;

    final MyoroTableRow<T> row = rowBuilder(_item);
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
                    : SizedBox(
                      width: _titleColumnKeyWidths[i],
                      child: cells[i],
                    ),
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
    final themeExtension =
        context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Text(
      'No items were found!',
      style: themeExtension.emptyMessageTextStyle,
    );
  }
}

final class _ErrorMessage extends StatelessWidget {
  final String _errorMessage;

  const _ErrorMessage(this._errorMessage);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableThemeExtension>();

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
