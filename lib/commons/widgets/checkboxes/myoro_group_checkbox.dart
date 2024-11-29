import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Checkboxes of the group. Provided as a map for speed and ease of navigation.
typedef MyoroGroupCheckboxItems = Map<String, bool>;

/// Function executed when any of the checkbox's values are changed.
typedef MyoroGroupCheckboxOnChanged = void Function(String key, MyoroGroupCheckboxItems items);

/// A group of [MyoroCheckbox]s.
final class MyoroGroupCheckbox extends StatefulWidget {
  /// [ValueNotifier] of the [MyoroGroupCheckbox] for more complex scope situations.
  final MyoroGroupCheckboxNotifier? notifier;

  /// Direction that the checkboxes will build in.
  final Axis? direction;

  /// Spacing in between the checkboxes.
  final double? spacing;

  /// Spacing in between the checkboxes when the checkboxes are wrapping (cross axis spacing).
  final double? runSpacing;

  /// Function executed when any of the checkbox's values are changed.
  final MyoroGroupCheckboxOnChanged? onChanged;

  /// Checkboxes of the group.
  ///
  /// The [Map]'s key is the label of the checkbox, which is never null
  /// or empty. The [Map]'s value is the initial value of the checkbox.
  final MyoroGroupCheckboxItems? checkboxes;

  MyoroGroupCheckbox({
    super.key,
    this.notifier,
    this.direction,
    this.spacing,
    this.runSpacing,
    this.onChanged,
    this.checkboxes,
  })  : assert(
          (notifier != null) ^ (checkboxes != null),
          '[MyoroGroupCheckbox]: If you are providing [notifier], you must pass '
          '[checkboxes] within its constructor and remove [checkboxes] here.',
        ),
        assert(
          notifier == null ? checkboxes!.isNotEmpty : true,
          '[MyoroGroupCheckbox]: [checkboxes] must not be empty when [notifier] isn\'t provided.',
        );

  @override
  State<MyoroGroupCheckbox> createState() => _MyoroGroupCheckboxState();
}

final class _MyoroGroupCheckboxState extends State<MyoroGroupCheckbox> {
  Axis? get _direction => widget.direction;
  double? get _spacing => widget.spacing;
  double? get _runSpacing => widget.runSpacing;
  MyoroGroupCheckboxOnChanged? get _onChanged => widget.onChanged;
  MyoroGroupCheckboxItems? get _checkboxes => widget.checkboxes;

  MyoroGroupCheckboxNotifier? _localNotifier;
  MyoroGroupCheckboxNotifier get _notifier {
    return widget.notifier ?? (_localNotifier ??= MyoroGroupCheckboxNotifier(_checkboxes!));
  }

  @override
  void dispose() {
    if (widget.notifier == null) _notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: _notifier,
      builder: (_, MyoroGroupCheckboxItems checkboxes, __) {
        return Wrap(
          direction: _direction ?? themeExtension.direction,
          spacing: _spacing ?? themeExtension.spacing,
          runSpacing: _runSpacing ?? themeExtension.runSpacing,
          children: checkboxes.entries.map<Widget>(
            (MapEntry<String, bool> entry) {
              return MyoroCheckbox(
                label: entry.key,
                initialValue: entry.value,
                onChanged: (bool value) {
                  _notifier.toggle(entry.key, value);
                  _onChanged?.call(entry.key, _notifier.checkboxes);
                },
              );
            },
          ).toList(),
        );
      },
    );
  }
}
