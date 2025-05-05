import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Table of MFL.
///
/// TODO: Needs to be tested.
@immutable
class MyoroTable<T> extends StatefulWidget {
  final MyoroTableConfiguration<T> configuration;

  const MyoroTable({super.key, required this.configuration});

  @override
  State<MyoroTable<T>> createState() => _MyoroTableState<T>();
}

final class _MyoroTableState<T> extends State<MyoroTable<T>> {
  MyoroTableConfiguration<T> get _configuration => widget.configuration;

  @override
  Widget build(_) {
    return Row(children: _builtColumnWidgets);
  }

  List<_Column> get _builtColumnWidgets {
    return _configuration.columns
        .map<_Column>((MyoroTableColumn column) => _Column(column))
        .toList();
  }
}

@immutable
final class _Column extends StatelessWidget {
  final MyoroTableColumn _column;

  const _Column(this._column);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    final Widget child = _column.child;

    return DefaultTextStyle(
      style: themeExtension.columnTextStyle,
      child: Container(
        color: Colors.pink.withOpacity(0.3),
        child: switch (_column.widthConfiguration.typeEnum) {
          MyoroTableColumnWidthConfigurationEnum.expanded => Expanded(child: child),
          MyoroTableColumnWidthConfigurationEnum.intrinsic => IntrinsicWidth(child: child),
          MyoroTableColumnWidthConfigurationEnum.fixed => SizedBox(
            width: _column.widthConfiguration.fixedWidth,
            child: child,
          ),
        },
      ),
    );
  }
}
