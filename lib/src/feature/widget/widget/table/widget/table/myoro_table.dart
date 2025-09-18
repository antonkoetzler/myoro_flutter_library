import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_column.dart';
part '_widget/_columns.dart';
part '_widget/_divider.dart';
part '_widget/_empty_message.dart';
part '_widget/_error_message.dart';
part '_widget/_loader.dart';
part '_widget/_row.dart';
part '_widget/_rows.dart';
part '_widget/_rows_section.dart';

/// Table of MFL.
///
/// Fairly simple implementation as tables are usually very business logic specific.
/// Thus, extensibility is more important than being feature rich in this senario.
class MyoroTable<T> extends StatefulWidget {
  const MyoroTable({super.key, this.controller, this.configuration, this.themeExtension})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroTable<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller of the [MyoroTable].
  final MyoroTableController<T>? controller;

  /// Configuration.
  final MyoroTableConfiguration<T>? configuration;

  /// Theme extension.
  final MyoroTableThemeExtension? themeExtension;

  @override
  State<MyoroTable<T>> createState() => _MyoroTableState<T>();
}

final class _MyoroTableState<T> extends State<MyoroTable<T>> {
  MyoroTableThemeExtension get _themeExtension {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    return widget.themeExtension ?? MyoroTableThemeExtension.builder(colorScheme, textTheme);
  }

  MyoroTableViewModel<T>? _localViewModel;
  // ignore: invalid_use_of_protected_member
  MyoroTableViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return widget.controller?.viewModel ?? (_localViewModel ??= context.read<MyoroTableViewModel<T>>());
  }

  @override
  void initState() {
    super.initState();
    _viewModel.state.itemsRequestNotifier.fetch();
  }

  @override
  void didUpdateWidget(covariant MyoroTable<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state.configuration = widget.configuration!;
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final decoration = _themeExtension.decoration;

    final child = InheritedProvider.value(
      value: _viewModel,
      child: decoration != null
          ? DecoratedBox(
              decoration: decoration,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IntrinsicHeight(child: _Columns<T>()),
                  const _Divider(Axis.horizontal),
                  Flexible(child: _RowsSection<T>()),
                ],
              ),
            )
          : null,
    );

    return MyoroSingularThemeExtensionWrapper(themeExtension: _themeExtension, child: child);
  }
}
