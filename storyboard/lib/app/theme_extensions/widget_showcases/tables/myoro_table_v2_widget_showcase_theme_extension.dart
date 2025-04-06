import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroTableV2WidgetShowcase].
final class MyoroTableV2WidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroTableV2WidgetShowcaseThemeExtension> {
  /// [EdgeInsets] of a [_TitleColumn].
  final EdgeInsets titleColumnPadding;

  const MyoroTableV2WidgetShowcaseThemeExtension({
    required this.titleColumnPadding,
  });

  const MyoroTableV2WidgetShowcaseThemeExtension.builder()
    : titleColumnPadding = const EdgeInsets.all(10);

  @override
  MyoroTableV2WidgetShowcaseThemeExtension copyWith({
    EdgeInsets? titleColumnPadding,
  }) {
    return MyoroTableV2WidgetShowcaseThemeExtension(
      titleColumnPadding: titleColumnPadding ?? this.titleColumnPadding,
    );
  }

  @override
  MyoroTableV2WidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroTableV2WidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTableV2WidgetShowcaseThemeExtension) return this;
    return copyWith(
      titleColumnPadding: EdgeInsets.lerp(
        titleColumnPadding,
        other.titleColumnPadding,
        t,
      ),
    );
  }
}
