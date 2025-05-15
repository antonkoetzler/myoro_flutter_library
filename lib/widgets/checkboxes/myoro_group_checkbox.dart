import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '../../theme_extensions/checkboxes/myoro_group_checkbox_theme_extension.dart';

/// Checkboxes of the group. Provided as a map for speed and ease of navigation.
typedef MyoroGroupCheckboxItems = Map<String, bool>;

/// Function executed when any of the checkbox's values are changed.
typedef MyoroGroupCheckboxOnChanged =
    void Function(String key, MyoroGroupCheckboxItems items);

/// A group of [MyoroCheckbox]s.
class MyoroGroupCheckbox extends StatefulWidget {
  /// Configuration.
  final MyoroGroupCheckboxConfiguration configuration;

  const MyoroGroupCheckbox({super.key, required this.configuration});

  @override
  State<MyoroGroupCheckbox> createState() => _MyoroGroupCheckboxState();
}

final class _MyoroGroupCheckboxState extends State<MyoroGroupCheckbox> {
  MyoroGroupCheckboxConfiguration get _configuration => widget.configuration;

  MyoroGroupCheckboxNotifier? _localNotifier;
  MyoroGroupCheckboxNotifier get _notifier {
    return _configuration.notifier ??
        (_localNotifier ??= MyoroGroupCheckboxNotifier(
          _configuration.checkboxes!,
        ));
  }

  @override
  void dispose() {
    _localNotifier?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: _notifier,
      builder: (_, MyoroGroupCheckboxItems checkboxes, __) {
        return Wrap(
          direction: _configuration.direction,
          spacing: _configuration.spacing ?? themeExtension.spacing,
          runSpacing: _configuration.runSpacing ?? themeExtension.runSpacing,
          children:
              checkboxes.entries.map<Widget>((MapEntry<String, bool> entry) {
                return MyoroCheckbox(
                  configuration: MyoroCheckboxConfiguration(
                    label: entry.key,
                    initialValue: entry.value,
                    onChanged: (bool value) {
                      _notifier.toggle(entry.key, value);
                      _configuration.onChanged?.call(
                        entry.key,
                        _notifier.checkboxes,
                      );
                    },
                  ),
                );
              }).toList(),
        );
      },
    );
  }
}
