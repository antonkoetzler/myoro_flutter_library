import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_widget_showcase_screen_state.dart';

/// View model of [MyoroTableWidgetShowcaseScreen].
final class MyoroTableWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroTableWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroTableWidgetShowcaseScreenState get state => _state;

  MyoroTableRow<String> rowBuilder(BuildContext context, String item) {
    void onTapDown(BuildContext context, String item) {
      _showSnackBar(context, '$item tapped!');
    }

    void onTapUp(BuildContext context, String item) {
      _showSnackBar(context, '$item tap released!');
    }

    return MyoroTableRow(
      onTapDown: (_) => onTapDown(context, item),
      onTapUp: (_) => onTapUp(context, item),
      cells: MyoroTableColumnWidthConfigurationEnum.values.map((value) {
        return Text('$item\'s value.name.capitalized cell.');
      }).toList(),
    );
  }

  /// Generic function to display a [MyoroSnackBar].
  void _showSnackBar(BuildContext context, String message) {
    context.showSnackBar(snackBar: MyoroSnackBar(message: message));
  }
}
