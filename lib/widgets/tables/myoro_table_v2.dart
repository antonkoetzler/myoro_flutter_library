import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Table of MFL.
final class MyoroTableV2<T> extends StatefulWidget {
  /// Configuration of [MyoroTableV2].
  final MyoroTableV2Configuration<T> configuration;

  const MyoroTableV2({super.key, required this.configuration});

  @override
  State<MyoroTableV2<T>> createState() => _MyoroTableV2State<T>();
}

final class _MyoroTableV2State<T> extends State<MyoroTableV2<T>> {
  MyoroTableV2Configuration<T> get _configuration => widget.configuration;

  MyoroTableV2Controller<T>? _localController;
  MyoroTableV2Controller<T> get _controller {
    return _configuration.controller ??
        (_localController ??= MyoroTableV2Controller());
  }

  /// Central [Bloc] of [MyoroTableV2].
  late final MyoroTableV2Bloc<T> _bloc;

  /// [GlobalKey]s of [_TitleCell]s.
  late final List<GlobalKey> _titleCellKeys;

  /// [ValueNotifier] of the widths of [_TitleCell]s to be passed to [_Rows].
  final _titleCellWidthsNotifier = ValueNotifier<List<double>>(const []);

  @override
  void initState() {
    super.initState();
    _bloc = MyoroTableV2Bloc(_configuration);
    _controller.bloc = _bloc;
    _controller.fetch();
    _titleCellKeys =
        _configuration.titleCells.map<GlobalKey>((_) => GlobalKey()).toList();
  }

  @override
  void dispose() {
    _bloc.close();
    _titleCellWidthsNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();

    return BlocProvider.value(
      value: _bloc,
      child: Container(
        decoration: themeExtension.decoration,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _TitleCells(
              _configuration,
              _titleCellKeys,
              _titleCellWidthsNotifier,
            ),
            Flexible(
              child: _RowsSection(_configuration, _titleCellWidthsNotifier),
            ),
          ],
        ),
      ),
    );
  }
}

/// Title columns of the [MyoroTableV2].
final class _TitleCells extends StatelessWidget {
  final MyoroTableV2Configuration _configuration;
  final List<GlobalKey> _titleCellKeys;
  final ValueNotifier<List<double>> _titleCellWidthsNotifier;

  const _TitleCells(
    this._configuration,
    this._titleCellKeys,
    this._titleCellWidthsNotifier,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IntrinsicHeight(
          // So we calculate the title columns everytime the window is resized.
          child: MyoroLayoutBuilder(builder: _builder),
        ),
        const _Divider(Axis.horizontal),
      ],
    );
  }

  Widget _builder(BuildContext context, __) {
    // Resetting [_titleCellWidthsNotifier] to put [_RowsSection] into a
    // loading state while the heights of each [_TitleCell] is gathered.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _titleCellWidthsNotifier.value = const [];
      _titleCellWidthsNotifier.value =
          _titleCellKeys.map<double>((GlobalKey key) {
            final renderBox =
                key.currentContext!.findRenderObject() as RenderBox;
            return renderBox.size.width;
          }).toList();
    });

    final myoroTableV2ThemeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();
    final myoroBasicDividerThemeExtension =
        context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();

    return Row(
      // Divided by two to "disable" the dividers from adding spacing.
      //
      // Subtracted by [myoroBasicDividerThemeExtension.shortValue]
      // to remove spacing added from the dividers.
      spacing:
          (myoroTableV2ThemeExtension.columnSpacing / 2) -
          (myoroBasicDividerThemeExtension.shortValue / 2),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _builtTitleCellWidgets,
    );
  }

  List<Widget> get _builtTitleCellWidgets {
    final List<MyoroTableV2Column> titleCells = _configuration.titleCells;
    final List<Widget> builtTitleCellWidgets = [];

    const divider = _Divider(Axis.vertical);

    for (int i = 0; i < titleCells.length; i++) {
      final bool isLastColumn = i == titleCells.length - 1;
      builtTitleCellWidgets.add(
        _TitleCell(_titleCellKeys[i], titleCells[i], isLastColumn),
      );
      if (!isLastColumn) builtTitleCellWidgets.add(divider);
    }

    return builtTitleCellWidgets;
  }
}

/// Title column of [_TitleCells].
final class _TitleCell extends StatelessWidget {
  final GlobalKey _key;
  final MyoroTableV2Column _column;
  final bool _isLastColumn;

  const _TitleCell(this._key, this._column, this._isLastColumn);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();

    final child = DefaultTextStyle(
      style: themeExtension.titleCellTextStyle,
      child: _column.child,
    );

    // Last column must always be expanded.
    if (_isLastColumn) {
      print(_column.widthConfiguration.enumValue);
      return Expanded(
        key: _key,
        child: Container(color: Colors.pink.withOpacity(0.3), child: child),
      );
    }

    return switch (_column.widthConfiguration.enumValue) {
      MyoroTableV2ColumnWidthConfigurationEnum.fixed => Container(
        key: _key,
        width: _column.widthConfiguration.fixedWidth!,
        color: Colors.pink.withOpacity(0.3),
        child: child,
      ),
      MyoroTableV2ColumnWidthConfigurationEnum.intrinsic => IntrinsicWidth(
        key: _key,
        child: Container(color: Colors.pink.withOpacity(0.3), child: child),
      ),
      MyoroTableV2ColumnWidthConfigurationEnum.expanded => Expanded(
        key: _key,
        child: Container(color: Colors.pink.withOpacity(0.3), child: child),
      ),
    };
  }
}

/// Divider of [MyoroTableV2].
final class _Divider extends StatelessWidget {
  final Axis _direction;

  const _Divider(this._direction);

  @override
  Widget build(BuildContext context) {
    return MyoroBasicDivider(
      configuration: MyoroBasicDividerConfiguration(direction: _direction),
    );
  }
}

/// Section where the fetched items (rows) of the table will be.
final class _RowsSection<T> extends StatelessWidget {
  final MyoroTableV2Configuration<T> _configuration;
  final ValueNotifier<List<double>> _titleCellWidthsNotifier;

  const _RowsSection(this._configuration, this._titleCellWidthsNotifier);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroTableV2Bloc<T>, MyoroTableV2State<T>>(
      buildWhen: _buildWhen,
      builder: (_, MyoroTableV2State<T> state) {
        return ValueListenableBuilder(
          valueListenable: _titleCellWidthsNotifier,
          builder: (_, List<double> titleCellWidths, __) {
            return _builder(state, titleCellWidths);
          },
        );
      },
    );
  }

  bool _buildWhen(MyoroTableV2State<T> previous, MyoroTableV2State<T> current) {
    return previous.status != current.status;
  }

  Widget _builder(MyoroTableV2State<T> state, List<double> titleCellWidths) {
    // Table can never have 0 columns, so this is a loading case.
    //
    // This is so the table never overflows when the window is resized.
    if (titleCellWidths.isEmpty) return const _Loader();

    return switch (state.status) {
      MyoroRequestEnum.idle => const _Loader(),
      MyoroRequestEnum.loading => const _Loader(),
      MyoroRequestEnum.success => _Rows(
        _configuration,
        state.items,
        titleCellWidths,
      ),
      MyoroRequestEnum.error => _ErrorMessage(state.errorMessage!),
    };
  }
}

/// Loading [Widget] of the [MyoroTableV2].
final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();

    return Padding(
      padding: themeExtension.dialogPadding,
      child: MyoroCircularLoader(size: themeExtension.loaderSize),
    );
  }
}

/// Where the rows of the (successfully) fetched items of the [MyoroTableV2] are built.
final class _Rows<T> extends StatelessWidget {
  final MyoroTableV2Configuration<T> _configuration;
  final List<T> _items;
  final List<double> _titleCellWidths;

  const _Rows(this._configuration, this._items, this._titleCellWidths);

  @override
  Widget build(BuildContext context) {
    if (_items.isEmpty) {
      return const _EmptyMessage();
    }

    final themeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();

    return Container(
      color: Colors.cyan.withOpacity(0.3),
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (_, int index) {
          final MyoroTableV2Row<T> row = _configuration.rowBuilder(
            _items[index],
          );
          final List<Widget> cells = row.cells;

          assert(
            _titleCellWidths.length == row.cells.length,
            '[MyoroTableV2._Rows]: # of [Widget]s in [MyoroTableV2Row.cells] '
            'must be equal to the length of [MyoroTableV2Configuration.titleCells].',
          );

          return MyoroHoverButton(
            builder: (_, __, ___) {
              return Row(
                spacing: themeExtension.columnSpacing,
                children: [
                  for (int i = 0; i < cells.length; i++) ...[
                    Container(
                      color: Colors.pink.withOpacity(0.3),
                      width: _titleCellWidths[i],
                      child: cells[i],
                    ),
                  ],
                ],
              );
            },
          );
        },
      ),
    );
  }
}

/// Empty message when there are no items to display.
final class _EmptyMessage extends StatelessWidget {
  const _EmptyMessage();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();
    return Padding(
      padding: themeExtension.dialogPadding,
      child: Text(
        'No items to display!',
        style: themeExtension.emptyMessageTextStyle,
      ),
    );
  }
}

/// Error message displayed when the items were fetched unsuccessfully.
final class _ErrorMessage extends StatelessWidget {
  final String _message;

  const _ErrorMessage(this._message);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();

    return Padding(
      padding: themeExtension.dialogPadding,
      child: Text(
        _message,
        textAlign: TextAlign.center,
        style: themeExtension.errorMessageTextStyle,
      ),
    );
  }
}
