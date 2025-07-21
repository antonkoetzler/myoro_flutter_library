import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_state.dart';

/// View model of [MyoroTable].
final class MyoroTableViewModel<T> {
  MyoroTableViewModel(MyoroTableConfiguration<T> configuration) : _state = MyoroTableState(configuration);

  /// State.
  final MyoroTableState<T> _state;
  MyoroTableState<T> get state => _state;

  /// Populdates [__titleColumnKeyWidthsController].
  void getTitleColumnKeyWidths() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _state.titleColumnKeyWidthsController.value =
          _state.titleColumnKeys.map<double>((GlobalKey titleColumnKey) {
            final renderBox = titleColumnKey.currentContext!.findRenderObject() as RenderBox;
            return renderBox.size.width;
          }).toList();
    });
  }
}
