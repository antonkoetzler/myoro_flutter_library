part of 'myoro_table_view_model.dart';

/// State of [MyoroTableViewModel].
final class MyoroTableState<T> {
  MyoroTableState(MyoroTableConfiguration<T> configuration) : _configuration = configuration {
    _itemsRequestController.requestCallback = _configuration.request;
    _createTitleColumnKeys();
  }

  /// Configuration.
  late MyoroTableConfiguration<T> _configuration;
  MyoroTableConfiguration<T> get configuration => _configuration;
  set configuration(MyoroTableConfiguration<T> configuration) {
    if (_configuration == configuration) return;
    _configuration = configuration;
    _createTitleColumnKeys();
  }

  /// [ValueNotifier] of the items/rows of the [MyoroTable].
  final _itemsRequestController = MyoroRequestController<Set<T>>();
  MyoroRequestController<Set<T>> get itemsRequestController => _itemsRequestController;
  MyoroRequest<Set<T>> get itemsRequest => _itemsRequestController.value;

  /// [List] of [GlobalKey]s attributed to every [MyoroTableColumn].
  final List<GlobalKey> _titleColumnKeys = [];
  List<GlobalKey> get titleColumnKeys => _titleColumnKeys;

  /// [ValueNotifier] responsible for gathering the widths of each [GlobalKey] of [__titleColumnKeys].
  final _titleColumnKeyWidthsController = ValueNotifier<List<double>>(const []);
  ValueNotifier<List<double>> get titleColumnKeyWidthsController => _titleColumnKeyWidthsController;
  List<double> get titleColumnKeyWidths => _titleColumnKeyWidthsController.value;

  /// Helper function to populate [_titleColumnKeys].
  void _createTitleColumnKeys() {
    _titleColumnKeys
      ..clear()
      ..addAll(configuration.columns.map<GlobalKey>((_) => GlobalKey()));
  }
}
