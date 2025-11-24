import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_file_picker_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroFilePicker].
@immutable
@myoroThemeExtension
final class MyoroFilePickerThemeExtension extends ThemeExtension<MyoroFilePickerThemeExtension>
    with _$MyoroFilePickerThemeExtensionMixin
    implements MyoroFilePickerStyle {
  /// Default constructor.
  const MyoroFilePickerThemeExtension({this.spacing, this.textStyle});

  /// Fake constructor.
  MyoroFilePickerThemeExtension.fake()
    : spacing = myoroNullableFake<double>(),
      textStyle = myoroNullableFake<MyoroTextStyle>();

  MyoroFilePickerThemeExtension.builder(TextTheme textTheme)
    : spacing = kMyoroMultiplier * 2,
      textStyle = MyoroTextStyle(style: textTheme.bodySmall!);

  /// Spacing between the selected file section text and the selection button.
  @override
  final double? spacing;

  /// [TextStyle] of the text of the [MyoroFilePicker].
  @override
  final MyoroTextStyle? textStyle;

  @override
  MyoroFilePickerThemeExtension lerp(covariant MyoroFilePickerThemeExtension? other, double t) {
    if (other is! MyoroFilePickerThemeExtension) return this;
    final style = MyoroFilePickerStyle.lerp(this, other, t);
    return MyoroFilePickerThemeExtension(spacing: style.spacing, textStyle: style.textStyle);
  }
}
