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

  late final MyoroTableV2Bloc<T> _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = MyoroTableV2Bloc(_configuration)..add(const FetchEvent());
    _controller.bloc = _bloc;
  }

  @override
  void dispose() {
    _bloc.close();
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
            _TitleColumns(_configuration),
            Flexible(child: _RowsSection<T>()),
          ],
        ),
      ),
    );
  }
}

/// Title columns of the [MyoroTableV2].
final class _TitleColumns extends StatelessWidget {
  final MyoroTableV2Configuration _configuration;

  const _TitleColumns(this._configuration);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IntrinsicHeight(
          child: Row(
            spacing: _configuration.columnSpacing ?? 0,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _builtTitleColumnWidgets,
          ),
        ),
        const _Divider(Axis.horizontal),
      ],
    );
  }

  List<Widget> get _builtTitleColumnWidgets {
    final List<MyoroTableV2Column> titleColumns = _configuration.titleColumns;
    final List<Widget> builtTitleColumnWidgets = [];

    const divider = _Divider(Axis.vertical);

    for (int i = 0; i < titleColumns.length; i++) {
      final bool isLastColumn = i == titleColumns.length - 1;
      builtTitleColumnWidgets.add(_TitleColumn(titleColumns[i], isLastColumn));
      if (!isLastColumn) builtTitleColumnWidgets.add(divider);
    }

    return builtTitleColumnWidgets;
  }
}

/// Title column of [_TitleColumns].
final class _TitleColumn extends StatelessWidget {
  final MyoroTableV2Column _column;
  final bool _isLastColumn;

  const _TitleColumn(this._column, this._isLastColumn);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableV2ThemeExtension>();

    final child = DefaultTextStyle(
      style: themeExtension.titleColumnTextStyle,
      child: _column.child,
    );

    // Last column must always be expanded.
    if (_isLastColumn) {
      print(_column.widthConfiguration.enumValue);
      return Expanded(
        child: Container(color: Colors.pink.withOpacity(0.3), child: child),
      );
    }

    return switch (_column.widthConfiguration.enumValue) {
      MyoroTableV2ColumnWidthConfigurationEnum.fixed => SizedBox(
        width: _column.widthConfiguration.fixedWidth!,
        child: child,
      ),
      MyoroTableV2ColumnWidthConfigurationEnum.intrinsic => IntrinsicWidth(
        child: child,
      ),
      MyoroTableV2ColumnWidthConfigurationEnum.expanded => Expanded(
        child: child,
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
  const _RowsSection();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroTableV2Bloc<T>, MyoroTableV2State<T>>(
      buildWhen: _buildWhen,
      builder: _builder,
    );
  }

  bool _buildWhen(MyoroTableV2State<T> previous, MyoroTableV2State<T> current) {
    return previous.status != current.status;
  }

  Widget _builder(_, MyoroTableV2State<T> state) {
    return switch (state.status) {
      MyoroRequestEnum.idle => const _Loader(),
      MyoroRequestEnum.loading => const _Loader(),
      MyoroRequestEnum.success => const _Rows(),
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
      padding: themeExtension.loaderErrorMessagePadding,
      child: MyoroCircularLoader(size: themeExtension.loaderSize),
    );
  }
}

/// Where the rows of the (successfully) fetched items of the [MyoroTableV2] are built.
final class _Rows extends StatelessWidget {
  const _Rows();

  @override
  Widget build(BuildContext context) {
    return const Text('Hello, World!');
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
      padding: themeExtension.loaderErrorMessagePadding,
      child: Text(
        _message,
        textAlign: TextAlign.center,
        style: themeExtension.errorMessageTextStyle,
      ),
    );
  }
}
