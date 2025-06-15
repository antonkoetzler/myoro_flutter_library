import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroTable].
class MyoroTableController<T> implements MyoroTableInterface {
  MyoroTableController({required MyoroTableConfiguration<T> configuration}) {
    state = MyoroTableState(configuration);
  }

  late final MyoroTableState<T> state;

  @override
  void dispose() {
    state.itemsRequestController.dispose();
    state.titleColumnKeyWidthsController.dispose();
  }

  @override
  void fetch() {
    state.itemsRequestController.fetch();
  }

  @override
  void getTitleColumnKeyWidths() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      state.titleColumnKeyWidthsController.value =
          state.titleColumnKeys.map<double>((GlobalKey titleColumnKey) {
            final renderBox = titleColumnKey.currentContext!.findRenderObject() as RenderBox;
            return renderBox.size.width;
          }).toList();
    });
  }
}
