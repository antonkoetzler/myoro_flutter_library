import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroTableController].
class MyoroTableState<T> {
  MyoroTableState(this._configuration) {
    itemsRequestController.requestCallback = configuration.request;
  }

  /// Configuration.
  late MyoroTableConfiguration<T> _configuration;
  MyoroTableConfiguration<T> get configuration => _configuration;
  set configuration(MyoroTableConfiguration<T> configuration) {
    _configuration = configuration;
    titleColumnKeys
      ..clear()
      ..addAll(configuration.columns.map<GlobalKey>((_) => GlobalKey()));
  }

  /// [ValueNotifier] of the items/rows of the [MyoroTable].
  final itemsRequestController = MyoroRequestController<Set<T>>();
  MyoroRequest<Set<T>> get itemsRequest => itemsRequestController.value;

  /// [List] of [GlobalKey]s attributed to every [MyoroTableColumn].
  final List<GlobalKey> titleColumnKeys = [];

  /// [ValueNotifier] responsible for gathering the widths of each [GlobalKey] of [_titleColumnKeys].
  final titleColumnKeyWidthsController = ValueNotifier<List<double>>(const []);
  List<double> get titleColumnKeyWidths => titleColumnKeyWidthsController.value;

  /// Dispose function.
  void dispose() {
    itemsRequestController.dispose();
    titleColumnKeyWidthsController.dispose();
  }
}
