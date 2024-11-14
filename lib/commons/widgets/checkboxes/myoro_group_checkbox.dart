import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Checkboxes of the group. Provided as a map for speed and ease of navigation.
typedef MyoroGroupCheckboxItems = Map<String, bool>;

/// Function executed when any of the checkbox's values are changed.
typedef MyoroGroupCheckboxOnChanged = void Function(String keyChanged, MyoroGroupCheckboxItems items);

/// Type definition to not have to type out the [ValueNotifier] everytime.
typedef MyoroGroupCheckboxController = ValueNotifier<MyoroGroupCheckboxItems>;

/// A group of [MyoroCheckbox]s.
final class MyoroGroupCheckbox extends StatefulWidget {
  /// Direction that the checkboxes will built.
  final Axis? direction;

  /// Spacing in between the checkboxes.
  final double? spacing;

  /// Spacing in between the checkboxes when the checkboxes are wrapping.
  final double? runSpacing;

  /// Function executed when any of the checkbox's values are changed.
  final MyoroGroupCheckboxOnChanged? onChanged;

  /// Controller of the [MyoroGroupCheckbox] for more complex situations.
  final MyoroGroupCheckboxController? controller;

  /// Checkboxes of the group.
  /// 
  /// The [Map]'s key is the label of the checkbox, which is never null
  /// or empty. The [Map]'s value is the initial value of the checkbox.
  final MyoroGroupCheckboxItems checkboxes;

  const MyoroGroupCheckbox({
    super.key,
    this.direction,
    this.spacing,
    this.runSpacing,
    this.onChanged,
    this.controller,
    required this.checkboxes,
  });

  @override
  State<MyoroGroupCheckbox> createState() => _MyoroGroupCheckboxState();
}

final class _MyoroGroupCheckboxState extends State<MyoroGroupCheckbox> {
  Axis? get _direction => widget.direction;
  double? get _spacing => widget.spacing;
  double? get _runSpacing => widget.runSpacing;
  MyoroGroupCheckboxOnChanged? get _onChanged => widget.onChanged;
  MyoroGroupCheckboxItems get _checkboxes => widget.checkboxes;

  MyoroGroupCheckboxController? _localController;
  MyoroGroupCheckboxController get _controller {
    return widget.controller ?? (_localController ??= MyoroGroupCheckboxController(_checkboxes));
  }

  @override
  void initState() {
    super.initState();
    _controller.value = _checkboxes;
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>();

    if (_checkboxes.isEmpty) return const SizedBox.shrink();

    return ValueListenableBuilder(
      valueListenable: _controller,
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
                  final Map<String, bool> newCheckboxes = Map.from(checkboxes);
                  newCheckboxes[entry.key] = value;
                  _onChanged?.call(entry.key, newCheckboxes);
                  _controller.value = newCheckboxes;
                },
              );
            },
          ).toList(),
        );
      }
    );
  }
}