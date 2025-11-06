import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_modal_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroModal].
@immutable
@myoroThemeExtension
class MyoroModalThemeExtension extends ThemeExtension<MyoroModalThemeExtension>
    with _$MyoroModalThemeExtensionMixin
    implements MyoroModalStyle {
  /// Default constructor.
  const MyoroModalThemeExtension({
    this.constraints,
    this.primaryColor,
    this.borderRadius,
    this.border,
    this.contentPadding,
    this.closeButtonPadding,
    this.spacing,
    this.titleTextStyle,
    this.closeButtonIconConfiguration,
    this.margin,
  });

  /// Fake constructor.
  MyoroModalThemeExtension.fake()
    : constraints = myoroNullableFake<BoxConstraints>(),
      primaryColor = myoroNullableFake<Color>(),
      borderRadius = myoroNullableFake<BorderRadius>(),
      border = myoroNullableFake<Border>(),
      contentPadding = myoroNullableFake<EdgeInsets>(),
      closeButtonPadding = myoroNullableFake<EdgeInsets>(),
      spacing = myoroNullableFake<double>(),
      titleTextStyle = myoroNullableFake<TextStyle>(),
      closeButtonIconConfiguration = faker.randomGenerator.boolean() ? MyoroIconConfiguration.fake() : null,
      margin = myoroNullableFake<EdgeInsets>();

  /// Builder constructor.
  MyoroModalThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : constraints = null,
      primaryColor = colorScheme.primary,
      borderRadius = BorderRadius.circular(kMyoroBorderRadius),
      border = Border.all(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
      contentPadding = const EdgeInsets.all(kMyoroMultiplier * 2),
      closeButtonPadding = null,
      spacing = 10,
      titleTextStyle = textTheme.titleSmall!,
      closeButtonIconConfiguration = const MyoroIconConfiguration(icon: Icons.close, size: kMyoroMultiplier * 5),
      margin = const EdgeInsets.all(kMyoroMultiplier * 3);

  /// Constraints of the modal.
  @override
  final BoxConstraints? constraints;

  /// Background [Color] of the modal.
  @override
  final Color? primaryColor;

  /// [BorderRadius] of the modal.
  @override
  final BorderRadius? borderRadius;

  /// [Border] of the modal.
  @override
  final Border? border;

  /// Padding of everything in the modal.
  @override
  final EdgeInsets? contentPadding;

  /// Padding of the close button.
  @override
  final EdgeInsets? closeButtonPadding;

  /// Spacing between the [_Header] and the contents of the modal.
  @override
  final double? spacing;

  /// Text style of [_Title].
  @override
  final TextStyle? titleTextStyle;

  /// [MyoroIconConfiguration] of [_CloseButton].
  @override
  final MyoroIconConfiguration? closeButtonIconConfiguration;

  /// Margin of the modal.
  @override
  final EdgeInsets? margin;

  @override
  MyoroModalThemeExtension lerp(covariant MyoroModalThemeExtension? other, double t) {
    if (other is! MyoroModalThemeExtension) return this;
    final style = MyoroModalStyle.lerp(this, other, t);
    return MyoroModalThemeExtension(
      constraints: style.constraints,
      primaryColor: style.primaryColor,
      borderRadius: style.borderRadius,
      border: style.border,
      contentPadding: style.contentPadding,
      closeButtonPadding: style.closeButtonPadding,
      spacing: style.spacing,
      titleTextStyle: style.titleTextStyle,
      closeButtonIconConfiguration: style.closeButtonIconConfiguration,
      margin: style.margin,
    );
  }

  /// Default [BoxConstraints] of the modal.
  BoxConstraints getDefaultConstraints(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BoxConstraints(maxWidth: screenSize.width * 0.9, maxHeight: screenSize.height * 0.5);
  }
}
