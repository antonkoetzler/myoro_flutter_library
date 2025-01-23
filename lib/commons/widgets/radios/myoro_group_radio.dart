import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Radios of the group. Provided as a map for speed and ease of navigation.
typedef MyoroGroupRadioItems = Map<String, bool>;

/// Function executed when any of the radio's values are changed.
typedef MyoroGroupRadioOnChanged = void Function(String keyChanged, MyoroGroupRadioItems items);

/// A group of [MyoroRadio]s.
final class MyoroGroupRadio extends StatefulWidget {
  /// [ValueNotifier] of the [MyoroGroupRadio] for more complex scope situations.
  final MyoroGroupRadioNotifier? notifier;

  /// Direction that the radios will built in.
  final Axis? direction;

  /// Spacing in between the radios.
  final double? spacing;

  /// Spacing in between the radios when the radios are wrapping (cross axis spacing).
  final double? runSpacing;

  /// Function executed when any of the radio's values are changed.
  final MyoroGroupRadioOnChanged? onChanged;

  /// Radios of the group.
  ///
  /// The [Map]'s key is the label of the radio, which is never null
  /// or empty. The [Map]'s value is the initial value of the checkbox.
  final MyoroGroupRadioItems? radios;

  MyoroGroupRadio({
    super.key,
    this.notifier,
    this.direction,
    this.spacing,
    this.runSpacing,
    this.onChanged,
    this.radios,
  })  : assert(
          !(notifier != null && radios != null),
          '[MyoroGroupRadio]: If you are providing [notifier], you must '
          'pass [radios] within its constructor and remove [radios] here.',
        ),
        assert(
          notifier == null ? MyoroGroupRadioNotifier.radiosAreValid(radios!) : true,
          '[MyoroGroupRadio]: [radios] provided are not valid, see [MyoroGroupRadioNotifier.radiosAreValid].',
        );

  static Finder finder({
    MyoroGroupRadioNotifier? notifier,
    bool notifierEnabled = false,
    Axis? direction,
    bool directionEnabled = false,
    double? spacing,
    bool spacingEnabled = false,
    double? runSpacing,
    bool runSpacingEnabled = false,
    MyoroGroupRadioOnChanged? onChanged,
    bool onChangedEnabled = false,
    MyoroGroupRadioItems? radios,
    bool radiosEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroGroupRadio &&
          (notifierEnabled ? w.notifier == notifier : true) &&
          (directionEnabled ? w.direction == direction : true) &&
          (spacingEnabled ? w.spacing == spacing : true) &&
          (runSpacingEnabled ? w.runSpacing == runSpacing : true) &&
          (onChangedEnabled ? w.onChanged == onChanged : true) &&
          (radiosEnabled ? w.radios == radios : true),
    );
  }

  @override
  State<MyoroGroupRadio> createState() => _MyoroGroupRadioState();
}

final class _MyoroGroupRadioState extends State<MyoroGroupRadio> {
  Axis? get _direction => widget.direction;
  double? get _spacing => widget.spacing;
  double? get _runSpacing => widget.runSpacing;
  MyoroGroupRadioOnChanged? get _onChanged => widget.onChanged;
  MyoroGroupRadioItems? get _radios => widget.radios;

  MyoroGroupRadioNotifier? _localNotifier;
  MyoroGroupRadioNotifier get _notifier {
    return widget.notifier ?? (_localNotifier ??= MyoroGroupRadioNotifier(_radios!));
  }

  @override
  void dispose() {
    if (widget.notifier == null) _notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroGroupRadioThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: _notifier,
      builder: (_, MyoroGroupRadioItems radios, __) {
        return Wrap(
          direction: _direction ?? themeExtension.direction,
          spacing: _spacing ?? themeExtension.spacing,
          runSpacing: _runSpacing ?? themeExtension.runSpacing,
          children: radios.entries.map<Widget>(
            (MapEntry<String, bool> entry) {
              return MyoroRadio(
                label: entry.key,
                initialValue: entry.value,
                onChanged: (_) {
                  _notifier.enable(entry.key);
                  _onChanged?.call(entry.key, _notifier.radios);
                },
              );
            },
          ).toList(),
        );
      },
    );
  }
}
