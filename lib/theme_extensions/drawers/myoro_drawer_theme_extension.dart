import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroDrawer].
class MyoroDrawerThemeExtension
    extends ThemeExtension<MyoroDrawerThemeExtension> {
  /// Padding of [_Drawer].
  final EdgeInsets drawerPadding;

  /// Padding of the content in [_Drawer].
  final EdgeInsets drawerContentPadding;

  /// [Drawer.shape] of the drawer.
  final ShapeBorder drawerShape;

  /// Padding of the [MyoroBasicDivider] in between [_Title] and [MyoroDrawer.child].
  final EdgeInsets titleContentDividerPadding;

  /// Text style of text in [_Title].
  final TextStyle titleTextStyle;

  /// Icon of the drawer on the left for [_CloseButton].
  final IconData closeButtonDrawerIcon;

  /// Icon of the drawer on the right for [_CloseButton].
  final IconData closeButtonEndDrawerIcon;

  /// [MyoroIconTextHoverButton.backgroundColor] of [_CloseButton].
  final Color closeButtonBackgroundColor;

  /// [MyoroIconTextHoverButton.bordered] of [_CloseButton].
  final bool closeButtonBordered;

  const MyoroDrawerThemeExtension({
    required this.drawerContentPadding,
    required this.drawerPadding,
    required this.drawerShape,
    required this.titleContentDividerPadding,
    required this.titleTextStyle,
    required this.closeButtonDrawerIcon,
    required this.closeButtonEndDrawerIcon,
    required this.closeButtonBackgroundColor,
    required this.closeButtonBordered,
  });

  MyoroDrawerThemeExtension.fake()
    : drawerPadding = EdgeInsets.all(faker.randomGenerator.decimal()),
      drawerContentPadding = EdgeInsets.all(faker.randomGenerator.decimal()),
      drawerShape = RoundedRectangleBorder(
        side: BorderSide(
          width: 2,
          color:
              kMyoroTestColors[faker.randomGenerator.integer(
                kMyoroTestColors.length,
              )],
        ),
      ),
      titleContentDividerPadding = EdgeInsets.all(
        faker.randomGenerator.decimal(),
      ),
      titleTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      closeButtonDrawerIcon =
          kMyoroTestIcons[faker.randomGenerator.integer(
            kMyoroTestIcons.length,
          )],
      closeButtonEndDrawerIcon =
          kMyoroTestIcons[faker.randomGenerator.integer(
            kMyoroTestIcons.length,
          )],
      closeButtonBackgroundColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      closeButtonBordered = faker.randomGenerator.boolean();

  MyoroDrawerThemeExtension.builder(
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) : drawerPadding = const EdgeInsets.all(20),
      drawerContentPadding = const EdgeInsets.all(10),
      drawerShape = RoundedRectangleBorder(
        side: BorderSide(
          width: kMyoroBorderLength,
          color: colorScheme.onPrimary,
        ),
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
      titleContentDividerPadding = const EdgeInsets.only(top: 4, bottom: 10),
      titleTextStyle = textTheme.titleLarge!,
      closeButtonDrawerIcon = Icons.keyboard_arrow_left,
      closeButtonEndDrawerIcon = Icons.keyboard_arrow_right,
      closeButtonBackgroundColor = colorScheme.primary,
      closeButtonBordered = true;

  @override
  MyoroDrawerThemeExtension copyWith({
    EdgeInsets? drawerPadding,
    EdgeInsets? drawerContentPadding,
    ShapeBorder? drawerShape,
    EdgeInsets? titleContentDividerPadding,
    TextStyle? titleTextStyle,
    IconData? closeButtonDrawerIcon,
    IconData? closeButtonEndDrawerIcon,
    Color? closeButtonBackgroundColor,
    bool? closeButtonBordered,
  }) {
    return MyoroDrawerThemeExtension(
      drawerPadding: drawerPadding ?? this.drawerPadding,
      drawerContentPadding: drawerContentPadding ?? this.drawerContentPadding,
      drawerShape: drawerShape ?? this.drawerShape,
      titleContentDividerPadding:
          titleContentDividerPadding ?? this.titleContentDividerPadding,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      closeButtonDrawerIcon:
          closeButtonDrawerIcon ?? this.closeButtonDrawerIcon,
      closeButtonEndDrawerIcon:
          closeButtonEndDrawerIcon ?? this.closeButtonEndDrawerIcon,
      closeButtonBackgroundColor:
          closeButtonBackgroundColor ?? this.closeButtonBackgroundColor,
      closeButtonBordered: closeButtonBordered ?? this.closeButtonBordered,
    );
  }

  @override
  MyoroDrawerThemeExtension lerp(
    covariant ThemeExtension<MyoroDrawerThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDrawerThemeExtension) return this;
    return copyWith(
      drawerPadding: EdgeInsets.lerp(drawerPadding, other.drawerPadding, t),
      drawerContentPadding: EdgeInsets.lerp(
        drawerContentPadding,
        other.drawerContentPadding,
        t,
      ),
      drawerShape: ShapeBorder.lerp(drawerShape, other.drawerShape, t),
      titleContentDividerPadding: EdgeInsets.lerp(
        titleContentDividerPadding,
        other.titleContentDividerPadding,
        t,
      ),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      closeButtonDrawerIcon: myoroLerp(
        closeButtonDrawerIcon,
        other.closeButtonDrawerIcon,
        t,
      ),
      closeButtonEndDrawerIcon: myoroLerp(
        closeButtonEndDrawerIcon,
        other.closeButtonEndDrawerIcon,
        t,
      ),
      closeButtonBackgroundColor: Color.lerp(
        closeButtonBackgroundColor,
        other.closeButtonBackgroundColor,
        t,
      ),
      closeButtonBordered: myoroLerp(
        closeButtonBordered,
        other.closeButtonBordered,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDrawerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.drawerContentPadding == drawerContentPadding &&
        other.drawerPadding == drawerPadding &&
        other.drawerShape == drawerShape &&
        other.titleContentDividerPadding == titleContentDividerPadding &&
        other.titleTextStyle == titleTextStyle &&
        other.closeButtonDrawerIcon == closeButtonDrawerIcon &&
        other.closeButtonEndDrawerIcon == closeButtonEndDrawerIcon &&
        other.closeButtonBackgroundColor == closeButtonBackgroundColor &&
        other.closeButtonBordered == closeButtonBordered;
  }

  @override
  int get hashCode {
    return Object.hash(
      drawerContentPadding,
      drawerPadding,
      drawerShape,
      titleContentDividerPadding,
      titleTextStyle,
      closeButtonDrawerIcon,
      closeButtonEndDrawerIcon,
      closeButtonBackgroundColor,
      closeButtonBordered,
    );
  }

  @override
  String toString() =>
      'MyoroDrawerThemeExtension(\n'
      '  drawerContentPadding: $drawerContentPadding,\n'
      '  drawerPadding: $drawerPadding,\n'
      '  drawerShape: $drawerShape,\n'
      '  titleContentDividerPadding: $titleContentDividerPadding,\n'
      '  titleTextStyle: $titleTextStyle,\n'
      '  closeButtonDrawerIcon: $closeButtonDrawerIcon,\n'
      '  closeButtonEndDrawerIcon: $closeButtonEndDrawerIcon,\n'
      '  closeButtonBackgroundColor: $closeButtonBackgroundColor,\n'
      '  closeButtonBordered: $closeButtonBordered,\n'
      ');';
}
