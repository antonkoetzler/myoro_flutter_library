import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_state.dart';

/// View model of [MyoroTable].
final class MyoroTableViewModel<T> {
  MyoroTableViewModel({
    required MyoroTableConfigurationRequest<T> request,
    required List<MyoroTableColumn> columns,
    required MyoroTableConfigurationRowBuilder<T> rowBuilder,
  }) : _state = MyoroTableState(request: request, columns: columns, rowBuilder: rowBuilder);

  /// State.
  final MyoroTableState<T> _state;

  /// [_state] getter.
  MyoroTableState<T> get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Populates [__titleColumnKeyWidthsController].
  void getTitleColumnKeyWidths() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _state.titleColumnKeyWidthsController.value = _state.titleColumnKeys.map<double>((GlobalKey titleColumnKey) {
        final renderBox = titleColumnKey.currentContext!.findRenderObject() as RenderBox;
        return renderBox.size.width;
      }).toList();
    });
  }
}
