import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroPieGraphWidgetShowcase].
final class MyoroPieGraphWidgetShowcaseViewModel {
  /// State
  final _state = MyoroPieGraphWidgetShowcaseState();
  MyoroPieGraphWidgetShowcaseState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroSingularDropdownConfiguration.selectedItemBuilder] of [_TypeEnumOption].
  String typeEnumOptionSelectedItemBuilder(MyoroPieGraphEnum item) {
    return _formattedTypeEnumName(item);
  }

  /// [MyoroMenuConfiguration.itemBuilder] of [_TypeEnumOption].
  MyoroMenuItem typeEnumOptionItemBuilder(MyoroPieGraphEnum item) {
    return MyoroMenuItem(textConfiguration: MyoroIconTextButtonTextConfiguration(text: _formattedTypeEnumName(item)));
  }

  /// Formatted name of a [MyoroPieGraphEnum].
  String _formattedTypeEnumName(MyoroPieGraphEnum typeEnum) {
    final name = typeEnum.name;
    return '${name[0].toUpperCase()}${name.substring(1)}';
  }
}
