part of 'myoro_table_view_model.dart';

/// State of [MyoroTableViewModel].
final class MyoroTableState<T> {
  /// Creates a new instance of [MyoroTableState].
  MyoroTableState({
    required MyoroTableConfigurationRequest<T> request,
    required List<MyoroTableColumn> columns,
    required MyoroTableConfigurationRowBuilder<T> rowBuilder,
  }) : _request = request,
       _columns = columns,
       _rowBuilder = rowBuilder,
       _itemsRequestController = MyoroRequestController<Set<T>>(request) {
    _createTitleColumnKeys();
  }

  /// Request of the items of the [MyoroTable].
  MyoroTableConfigurationRequest<T> _request;

  /// Columns of the [MyoroTable].
  List<MyoroTableColumn> _columns;

  /// Builder of the cells of the row.
  MyoroTableConfigurationRowBuilder<T> _rowBuilder;

  /// [ValueNotifier] of the items/rows of the [MyoroTable].
  final MyoroRequestController<Set<T>> _itemsRequestController;

  /// [List] of [GlobalKey]s attributed to every [MyoroTableColumn].
  final List<GlobalKey> _titleColumnKeys = [];

  /// [ValueNotifier] responsible for gathering the widths of each [GlobalKey] of [__titleColumnKeys].
  final _titleColumnKeyWidthsController = ValueNotifier<List<double>>(const []);

  /// [_request] getter.
  MyoroTableConfigurationRequest<T> get request => _request;

  /// [_columns] getter.
  List<MyoroTableColumn> get columns => _columns;

  /// [_rowBuilder] getter.
  MyoroTableConfigurationRowBuilder<T> get rowBuilder => _rowBuilder;

  /// [_itemsRequestController] getter.
  MyoroRequestController<Set<T>> get itemsRequestController => _itemsRequestController;

  /// [_titleColumnKeys] getter.
  List<GlobalKey> get titleColumnKeys => _titleColumnKeys;

  /// [_titleColumnKeyWidthsController] getter.
  ValueNotifier<List<double>> get titleColumnKeyWidthsController => _titleColumnKeyWidthsController;

  /// [_itemsRequestController] getter.
  MyoroRequest<Set<T>> get itemsRequest => _itemsRequestController.value;

  /// [_request] setter.
  set request(MyoroTableConfigurationRequest<T> request) {
    if (_request == request) return;
    _request = request;
    _itemsRequestController.setRequestCallback(_request);
  }

  /// [_columns] setter.
  set columns(List<MyoroTableColumn> columns) {
    if (_columns == columns) return;
    _columns = columns;
    _createTitleColumnKeys();
  }

  /// [_rowBuilder] setter.
  set rowBuilder(MyoroTableConfigurationRowBuilder<T> rowBuilder) {
    if (_rowBuilder == rowBuilder) return;
    _rowBuilder = rowBuilder;
  }

  /// Helper function to populate [_titleColumnKeys].
  void _createTitleColumnKeys() {
    _titleColumnKeys
      ..clear()
      ..addAll(_columns.map<GlobalKey>((_) => GlobalKey()));
  }

  /// Dispose function.
  void dispose() {
    _itemsRequestController.dispose();
    _titleColumnKeyWidthsController.dispose();
  }
}
