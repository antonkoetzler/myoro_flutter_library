part of '../myoro_table.dart';

/// Rows of a [MyoroTable].
final class _Rows<T> extends StatelessWidget {
  // final MyoroTableController<T> _controller;
  // Set<T> get _items => _controller.itemsRequest.data!;
  // ValueNotifier<List<double>> get _titleColumnKeyWidthsController => _controller.titleColumnKeyWidthsController;
  // List<double> get _titleColumnKeyWidths => _controller.titleColumnKeyWidths;

  const _Rows(this._items);

  /// Successfully loaded items.
  final Set<T> _items;

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTableViewModel<T>>();
    final state = viewModel.state;
    final titleColumnKeyWidthsController = state.titleColumnKeyWidthsController;

    if (_items.isEmpty) {
      return const _EmptyMessage();
    }

    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: titleColumnKeyWidthsController,
      builder: (_, titleColumnKeyWidths, _) {
        // Empty case as there cannot be 0 [MyoroTableColumn]s in a [MyoroTable].
        if (titleColumnKeyWidths.isEmpty) {
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
            itemBuilder: (_, int index) => _Row(_items.elementAt(index), titleColumnKeyWidths),
          ),
        );
      },
    );
  }
}
