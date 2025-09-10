part of '../myoro_table.dart';

/// Rows of a [MyoroTable].
final class _Rows<T> extends StatelessWidget {
  const _Rows(this._items);

  /// Successfully loaded items.
  final Set<T> _items;

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTableViewModel<T>>();
    final state = viewModel.state;
    final titleColumnKeyWidthsNotifier = state.titleColumnKeyWidthsNotifier;

    if (_items.isEmpty) {
      return const _EmptyMessage();
    }

    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: titleColumnKeyWidthsNotifier,
      builder: (_, titleColumnKeyWidths, _) {
        // Empty case as there cannot be 0 [MyoroTableColumn]s in a [MyoroTable].
        if (titleColumnKeyWidths.isEmpty) {
          return const _Loader();
        }

        final decorationBorderRadius = themeExtension.decoration?.borderRadius as BorderRadius?;

        return ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: decorationBorderRadius != null
              ? BorderRadius.only(
                  bottomLeft: decorationBorderRadius.bottomLeft,
                  bottomRight: decorationBorderRadius.bottomRight,
                )
              : BorderRadius.zero,
          child: ListView.builder(
            itemCount: _items.length,
            itemBuilder: (_, int index) => _Row(_items.elementAt(index), titleColumnKeyWidths),
          ),
        );
      },
    );
  }
}
