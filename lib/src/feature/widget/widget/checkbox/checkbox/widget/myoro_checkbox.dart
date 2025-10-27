import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_checkbox.dart';
part '../_widget/_label.dart';

/// A checkbox that can have a label on the right side of it.
class MyoroCheckbox extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroCheckboxStyle();

  /// Default value of [label].
  static const labelDefaultValue = '';

  /// Default value of [value].
  static const valueDefaultValue = false;

  const MyoroCheckbox({
    super.key,
    this.style = styleDefaultValue,
    this.label = labelDefaultValue,
    this.value = valueDefaultValue,
    this.onChanged,
  });

  /// Theme extension.
  final MyoroCheckboxStyle style;

  /// Label at the right of the checkbox.
  final String label;

  /// Value of the [MyoroCheckbox].
  final bool value;

  /// Function that is executed when the checkbox is changed.
  final MyoroCheckboxOnChanged? onChanged;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: style),
        InheritedProvider(
          create: (_) => MyoroCheckboxViewModel(label, value, onChanged),
          dispose: (_, v) => v.dispose(),
        ),
      ],
      child: Builder(
        builder: (context) {
          final viewModel = context.read<MyoroCheckboxViewModel>();
          final onTapUp = viewModel.onTapUp;

          return MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTapUp: onTapUp,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const _Checkbox(),
                  if (label.isNotEmpty) ...[
                    GestureDetector(
                      onTapUp: onTapUp,
                      child: Padding(
                        padding: EdgeInsets.only(left: spacing),
                        child: const Flexible(child: _Label()),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
