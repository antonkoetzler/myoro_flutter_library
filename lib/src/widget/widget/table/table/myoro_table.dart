import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

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
class MyoroTable<T> extends MyoroStatefulWidget {
  /// Controller of the [MyoroTable].
  final MyoroTableController<T>? controller;

  /// Configuration.
  final MyoroTableConfiguration<T>? configuration;

  const MyoroTable({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroTable<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  @override
  State<MyoroTable<T>> createState() => _MyoroTableState<T>();
}

final class _MyoroTableState<T> extends State<MyoroTable<T>> {
  MyoroTableController<T>? _localController;
  MyoroTableController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroTableController(configuration: widget.configuration!));
  }

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  void didUpdateWidget(covariant MyoroTable<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.configuration != null) {
      _controller.configuration = widget.configuration!;
    }
  }

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Container(
      decoration: themeExtension.decoration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IntrinsicHeight(child: _Columns(_controller)),
          const _Divider(Axis.horizontal),
          Flexible(child: _RowsSection(_controller)),
        ],
      ),
    );
  }
}
