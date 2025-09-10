part of '../myoro_table.dart';

/// Columns (a.k.a titles) section of [MyoroTable].
final class _Columns<T> extends StatelessWidget {
  const _Columns();

  @override
  Widget build(context) {
    final tableThemeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    final basicDividerThemeExtension = context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();

    final decorationBorderRadius = tableThemeExtension.decoration?.borderRadius as BorderRadius? ?? BorderRadius.zero;

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
            spacing: (tableThemeExtension.columnSpacing ?? 0 / 2) - ((basicDividerThemeExtension.shortValue ?? 0) / 2),
            children: _buildColumns(context),
          ),
        );
      },
    );
  }

  List<Widget> _buildColumns(BuildContext context) {
    final viewModel = context.read<MyoroTableViewModel<T>>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final columns = configuration.columns;
    final titleColumnKeys = state.titleColumnKeys;

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

    viewModel.getTitleColumnKeyWidths();

    return widgets;
  }
}
