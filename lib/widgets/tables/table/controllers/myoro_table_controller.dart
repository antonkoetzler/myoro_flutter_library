import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroTable].
class MyoroTableController<T> {
  /// Configuration.
  MyoroTableConfiguration<T> _configuration;
  MyoroTableConfiguration<T> get configuration => _configuration;
  set configuration(MyoroTableConfiguration<T> configuration) {
    _configuration = configuration;
    _titleColumnKeys
      ..clear()
      ..addAll(configuration.columns.map<GlobalKey>((_) => GlobalKey()));
  }

  /// [ValueNotifier] of the items/rows of the [MyoroTable].
  final _itemsRequestController = MyoroRequestController<Set<T>>();
  MyoroRequestController<Set<T>> get itemsRequestController => _itemsRequestController;
  MyoroRequest<Set<T>> get itemsRequest => _itemsRequestController.value;

  /// [List] of [GlobalKey]s attributed to every [MyoroTableColumn].
  final List<GlobalKey> _titleColumnKeys = [];
  List<GlobalKey> get titleColumnKeys => _titleColumnKeys;

  /// [ValueNotifier] responsible for gathering the widths of each [GlobalKey] of [_titleColumnKeys].
  final _titleColumnKeyWidthsNotifier = ValueNotifier<List<double>>(const []);
  ValueNotifier<List<double>> get titleColumnKeyWidthsNotifier => _titleColumnKeyWidthsNotifier;
  List<double> get titleColumnKeyWidths => _titleColumnKeyWidthsNotifier.value;

  MyoroTableController(this._configuration) {
    _itemsRequestController.requestCallback = _configuration.request;
  }

  /// Dispose function.
  void dispose() {
    _itemsRequestController.dispose();
    _titleColumnKeyWidthsNotifier.dispose();
  }

  /// Fetches the items of the [MyoroTable].
  void fetch() {
    _itemsRequestController.fetch();
  }

  /// Populdates [_titleColumnKeyWidthsNotifier].
  void getTitleColumnKeyWidths() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _titleColumnKeyWidthsNotifier.value =
          _titleColumnKeys.map<double>((GlobalKey titleColumnKey) {
            final renderBox = titleColumnKey.currentContext!.findRenderObject() as RenderBox;
            return renderBox.size.width;
          }).toList();
    });
  }
}
