part of 'myoro_table_view_model.dart';

/// State of [MyoroTableViewModel].
final class MyoroTableState<T> {
  MyoroTableState(MyoroTableConfiguration<T> configuration) : _configuration = configuration {
    _itemsRequestNotifier.requestCallback = _configuration.request;
    _createTitleColumnKeys();
  }

  /// Configuration.
  late MyoroTableConfiguration<T> _configuration;

  /// [_configuration] getter.
  MyoroTableConfiguration<T> get configuration => _configuration;

  /// [_configuration] setter.
  set configuration(MyoroTableConfiguration<T> configuration) {
    if (_configuration == configuration) return;
    _configuration = configuration;
    _createTitleColumnKeys();
  }

  /// [ValueNotifier] of the items/rows of the [MyoroTable].
  final _itemsRequestNotifier = MyoroRequestNotifier<Set<T>>();

  /// [_itemsRequestNotifier] getter.
  MyoroRequestNotifier<Set<T>> get itemsRequestNotifier => _itemsRequestNotifier;

  /// [_itemsRequestNotifier] getter.
  MyoroRequest<Set<T>> get itemsRequest => _itemsRequestNotifier.value;

  /// [List] of [GlobalKey]s attributed to every [MyoroTableColumn].
  final List<GlobalKey> _titleColumnKeys = [];

  /// [_titleColumnKeys] getter.
  List<GlobalKey> get titleColumnKeys => _titleColumnKeys;

  /// [ValueNotifier] responsible for gathering the widths of each [GlobalKey] of [__titleColumnKeys].
  final _titleColumnKeyWidthsNotifier = ValueNotifier<List<double>>(const []);

  /// [_titleColumnKeyWidthsNotifier] getter.
  ValueNotifier<List<double>> get titleColumnKeyWidthsNotifier => _titleColumnKeyWidthsNotifier;

  /// Helper function to populate [_titleColumnKeys].
  void _createTitleColumnKeys() {
    _titleColumnKeys
      ..clear()
      ..addAll(configuration.columns.map<GlobalKey>((_) => GlobalKey()));
  }

  /// Dispose function.
  void dispose() {
    _itemsRequestNotifier.dispose();
    _titleColumnKeyWidthsNotifier.dispose();
  }
}
