import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Table of MFL.
///
/// TODO: Needs to be tested.
class MyoroTableV2<T> extends StatefulWidget {
  /// Configuration.
  final MyoroTableV2Configuration<T> configuration;

  const MyoroTableV2({super.key, required this.configuration});

  @override
  State<MyoroTableV2<T>> createState() => _MyoroTableV2State<T>();
}

final class _MyoroTableV2State<T> extends State<MyoroTableV2<T>> {
  MyoroTableV2Configuration<T> get _configuration => widget.configuration;

  late final MyoroTableV2ViewModel<T> _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = MyoroTableV2ViewModel(configuration: _configuration)..fetch();
  }

  @override
  void didUpdateWidget(covariant MyoroTableV2<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.configuration = _configuration;
    _viewModel.fetch();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableV2ThemeExtension>();

    return Container(
      decoration: themeExtension.decoration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(child: _Columns(_viewModel)),
          const _Divider(),
          Flexible(child: _RowsSection(_viewModel)),
        ],
      ),
    );
  }
}

final class _Columns<T> extends StatelessWidget {
  final MyoroTableV2ViewModel<T> _viewModel;

  const _Columns(this._viewModel);

  @override
  Widget build(BuildContext context) {
    final columns = _viewModel.configuration.columns;
    final List<Widget> mappedColumnWidgets = [
      for (int i = 0; i < columns.length; i++) _Column(columns[i], i == (columns.length - 1)),
    ];
    return Row(children: mappedColumnWidgets);
  }
}

final class _Column extends StatelessWidget {
  final MyoroTableV2Column _column;
  final bool _isLastColumn;

  const _Column(this._column, this._isLastColumn);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableV2ThemeExtension>();

    final MyoroTableV2ColumnWidthConfiguration widthConfiguration = _column.widthConfiguration;
    final Widget child = DefaultTextStyle(
      style: themeExtension.columnTextStyle,
      child: _column.child,
    );

    // Last column is always expanded.
    if (_isLastColumn) {
      return Expanded(child: child);
    }

    return switch (widthConfiguration.typeEnum) {
      MyoroTableV2ColumnWidthConfigurationEnum.fixed => SizedBox(
        width: widthConfiguration.fixedWidth,
        child: child,
      ),
      MyoroTableV2ColumnWidthConfigurationEnum.intrinsic => IntrinsicWidth(child: child),
      MyoroTableV2ColumnWidthConfigurationEnum.expanded => Expanded(child: child),
    };
  }
}

final class _RowsSection<T> extends StatelessWidget {
  final MyoroTableV2ViewModel<T> _viewModel;

  const _RowsSection(this._viewModel);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: _viewModel.statusNotifier, builder: _builder);
  }

  Widget _builder(_, MyoroRequestEnum status, __) {
    return switch (status) {
      MyoroRequestEnum.idle => const _Loader(),
      MyoroRequestEnum.loading => const _Loader(),
      MyoroRequestEnum.success => _Rows(_viewModel),
      MyoroRequestEnum.error => _ErrorMessage(_viewModel),
    };
  }
}

final class _Rows<T> extends StatelessWidget {
  final MyoroTableV2ViewModel<T> _viewModel;

  const _Rows(this._viewModel);

  @override
  Widget build(BuildContext context) {
    assert(
      _viewModel.pagination != null,
      '[MyoroTable<$T>._RowsSection]: [_viewModel.pagination] cannot '
      'be null when [status] is [MyoroRequestEnum.success]',
    );

    return const Text('START');
  }
}

final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableV2ThemeExtension>();

    return Padding(padding: themeExtension.loaderPadding, child: const MyoroCircularLoader());
  }
}

final class _ErrorMessage<T> extends StatelessWidget {
  final MyoroTableV2ViewModel<T> _viewModel;

  const _ErrorMessage(this._viewModel);

  @override
  Widget build(BuildContext context) {
    final String? errorMessage = _viewModel.errorMessage;

    assert(
      errorMessage != null,
      '[MyoroTable<$T>._ErrorMessage]: [_viewModel.errorMessage] cannot be null.',
    );

    final themeExtension = context.resolveThemeExtension<MyoroTableV2ThemeExtension>();

    return Padding(
      padding: themeExtension.errorMessagePadding,
      child: Text(errorMessage!, style: themeExtension.errorMessageTextStyle),
    );
  }
}

final class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return const MyoroBasicDivider(
      configuration: MyoroBasicDividerConfiguration(direction: Axis.horizontal),
    );
  }
}
