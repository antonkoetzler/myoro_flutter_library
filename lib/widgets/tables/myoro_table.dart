import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/blocs/myoro_table_bloc/myoro_table_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Table of MFL.
///
/// TODO: Needs to be tested.
@immutable
class MyoroTable<T> extends StatefulWidget {
  /// Controller.
  ///
  /// Not within [MyoroTableConfiguration] to reduce circular dependency risks and to also
  /// increase legibility by not having to alter [configuration] to initialize the controller.
  final MyoroTableController<T>? controller;

  /// Configuration.
  final MyoroTableConfiguration<T> configuration;

  const MyoroTable({super.key, this.controller, required this.configuration});

  @override
  State<MyoroTable<T>> createState() => _MyoroTableState<T>();
}

final class _MyoroTableState<T> extends State<MyoroTable<T>> {
  MyoroTableConfiguration<T> get _configuration => widget.configuration;

  MyoroTableController<T>? _localController;
  MyoroTableController<T> get _controller {
    final MyoroTableController<T> controller =
        widget.controller ?? (_localController ??= MyoroTableController());
    controller.bloc = _bloc;
    return controller;
  }

  final _bloc = MyoroTableBloc<T>();

  @override
  void initState() {
    super.initState();
    _bloc.configuration = _configuration;
    _controller.fetch();
  }

  @override
  void didUpdateWidget(covariant MyoroTable<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _bloc.configuration = _configuration;
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [IntrinsicHeight(child: _Columns<T>()), Expanded(child: _RowsSection<T>())],
      ),
    );
  }
}

@immutable
final class _Columns<T> extends StatelessWidget {
  const _Columns();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Row(spacing: themeExtension.columnSpacing, children: _buildColumns(context));
  }

  List<_Column> _buildColumns(BuildContext context) {
    final MyoroTableBloc<T> bloc = context.resolveBloc<MyoroTableBloc<T>>();
    final List<MyoroTableColumn> columns = bloc.configuration.columns;
    final List<GlobalKey> titleColumnKeys = bloc.titleColumnKeys;
    final ValueNotifier<List<double>> titleColumnKeyWidthsNotifier =
        bloc.titleColumnKeyWidthsNotifier;

    assert(
      columns.length == titleColumnKeys.length,
      '[MyoroTable<$T>._buildColumns]: Length of [columns] must be equal to the length of [titleColumnKeys]',
    );

    final List<_Column> widgets = [];
    for (int i = 0; i < columns.length; i++) {
      widgets.add(_Column(titleColumnKeys[i], columns[i]));
    }

    // Before returning [widgets], we schedule the post-frame
    // callback in order to set [bloc.titleColumnKeyWidthsNotifier].
    WidgetsBinding.instance.addPostFrameCallback((_) {
      titleColumnKeyWidthsNotifier.value =
          titleColumnKeys.map<double>((GlobalKey titleColumnKey) {
            final renderBox = titleColumnKey.currentContext!.findRenderObject() as RenderBox;
            return renderBox.size.width;
          }).toList();
    });

    return widgets;
  }
}

@immutable
final class _Column extends StatelessWidget {
  final MyoroTableColumn _column;

  const _Column(Key? key, this._column) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    final Widget child = Container(
      color: Colors.pink.withOpacity(0.3),
      child: DefaultTextStyle(style: themeExtension.columnTextStyle, child: _column.child),
    );

    return switch (_column.widthConfiguration.typeEnum) {
      MyoroTableColumnWidthConfigurationEnum.expanded => Expanded(child: child),
      MyoroTableColumnWidthConfigurationEnum.intrinsic => IntrinsicWidth(child: child),
      MyoroTableColumnWidthConfigurationEnum.fixed => SizedBox(
        width: _column.widthConfiguration.fixedWidth,
        child: child,
      ),
    };
  }
}

@immutable
final class _RowsSection<T> extends StatelessWidget {
  const _RowsSection();

  @override
  Widget build(_) {
    return BlocBuilder<MyoroTableBloc<T>, MyoroTableState<T>>(
      buildWhen: _buildWhen,
      builder: _builder,
    );
  }

  bool _buildWhen(MyoroTableState<T> previous, MyoroTableState<T> current) {
    return (previous.status != current.status);
  }

  Widget _builder(_, MyoroTableState<T> state) {
    return switch (state.status) {
      MyoroRequestEnum.idle => const _Loader(),
      MyoroRequestEnum.loading => const _Loader(),
      MyoroRequestEnum.success => _Rows(state.pagination!),
      MyoroRequestEnum.error => _ErrorMessage(state.errorMessage!),
    };
  }
}

@immutable
final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Padding(padding: themeExtension.loaderPadding, child: const MyoroCircularLoader());
  }
}

@immutable
final class _Rows<T> extends StatelessWidget {
  final MyoroTablePagination<T> _pagination;

  const _Rows(this._pagination);

  @override
  Widget build(BuildContext context) {
    if (_pagination.items.isEmpty) {
      return const _EmptyMessage();
    }

    final MyoroTableBloc<T> bloc = context.resolveBloc<MyoroTableBloc<T>>();
    final ValueNotifier<List<double>> titleColumnKeyWidthsNotifier =
        bloc.titleColumnKeyWidthsNotifier;

    return ValueListenableBuilder(valueListenable: titleColumnKeyWidthsNotifier, builder: _builder);
  }

  Widget _builder(_, List<double> titleColumnKeyWidths, __) {
    print(titleColumnKeyWidths);
    return const Text('This is looking really clean');
  }
}

@immutable
final class _EmptyMessage extends StatelessWidget {
  const _EmptyMessage();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Text('No items were found!', style: themeExtension.emptyMessageTextStyle);
  }
}

@immutable
final class _ErrorMessage extends StatelessWidget {
  final String _errorMessage;

  const _ErrorMessage(this._errorMessage);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Text(_errorMessage, style: themeExtension.errorMessageTextStyle);
  }
}
