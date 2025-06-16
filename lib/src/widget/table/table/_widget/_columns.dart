part of '../myoro_table.dart';

/// Columns (a.k.a titles) section of [MyoroTable].
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
      builder: (_, _) {
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
