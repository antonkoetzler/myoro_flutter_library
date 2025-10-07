part of 'myoro_table_view_model.dart';

/// State of [MyoroTableViewModel].
final class MyoroTableState<T> {
  /// Creates a new instance of [MyoroTableState].
  MyoroTableState(MyoroTableConfiguration<T> configuration) : _configuration = configuration {
    _itemsRequestController.requestCallback = _configuration.request;
    _createTitleColumnKeys();
  }

  /// Configuration.
  late MyoroTableConfiguration<T> _configuration;

  /// [ValueNotifier] of the items/rows of the [MyoroTable].
  final _itemsRequestController = MyoroRequestNotifier<Set<T>>();

  /// [List] of [GlobalKey]s attributed to every [MyoroTableColumn].
  final List<GlobalKey> _titleColumnKeys = [];

  /// [ValueNotifier] responsible for gathering the widths of each [GlobalKey] of [__titleColumnKeys].
  final _titleColumnKeyWidthsController = ValueNotifier<List<double>>(const []);

  /// [_configuration] getter.
  MyoroTableConfiguration<T> get configuration => _configuration;

  /// [_itemsRequestController] getter.
  MyoroRequestNotifier<Set<T>> get itemsRequestController => _itemsRequestController;

  /// [_titleColumnKeys] getter.
  List<GlobalKey> get titleColumnKeys => _titleColumnKeys;

  /// [_titleColumnKeyWidthsController] getter.
  ValueNotifier<List<double>> get titleColumnKeyWidthsController => _titleColumnKeyWidthsController;

  /// [_itemsRequestController] getter.
  MyoroRequest<Set<T>> get itemsRequest => _itemsRequestController.value;

  /// [_configuration] setter.
  set configuration(MyoroTableConfiguration<T> configuration) {
    if (_configuration == configuration) return;
    _configuration = configuration;
    _createTitleColumnKeys();
  }

  /// Helper function to populate [_titleColumnKeys].
  void _createTitleColumnKeys() {
    _titleColumnKeys
      ..clear()
      ..addAll(configuration.columns.map<GlobalKey>((_) => GlobalKey()));
  }

  /// Dispose function.
  void dispose() {
    _itemsRequestController.dispose();
    _titleColumnKeyWidthsController.dispose();
  }
}
