import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_style.g.dart';

/// Style model of [MyoroButton].
@immutable
@myoroModel
class MyoroButtonStyle with _$MyoroButtonStyleMixin {
  const MyoroButtonStyle({this.backgroundColorBuilder});

  /// Background color builder.
  final MyoroButtonBackgroundColorBuilder? backgroundColorBuilder;

  /// Copy with.
  MyoroButtonStyle copyWith({
    MyoroButtonBackgroundColorBuilder? backgroundColorBuilder,
    bool backgroundColorBuilderProvided = true,
  }) {
    return MyoroButtonStyle(
      backgroundColorBuilder: backgroundColorBuilderProvided
          ? (backgroundColorBuilder ?? this.backgroundColorBuilder)
          : null,
    );
  }
}
