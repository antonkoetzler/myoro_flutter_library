import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'controller/myoro_group_checkbox_controller.dart';
part 'controller/myoro_group_checkbox_controller_impl.dart';
part 'models/myoro_group_checkbox_configuration.dart';
part 'myoro_group_checkbox_theme_extension.dart';
part 'myoro_group_checkbox_types.dart';

/// A group of [MyoroCheckbox]s.
class MyoroGroupCheckbox extends StatefulWidget {
  /// Controller.
  final MyoroGroupCheckboxController? controller;

  /// Configuration.
  final MyoroGroupCheckboxConfiguration configuration;

  const MyoroGroupCheckbox({super.key, this.controller, required this.configuration});

  @override
  State<MyoroGroupCheckbox> createState() => _MyoroGroupCheckboxState();
}

final class _MyoroGroupCheckboxState extends State<MyoroGroupCheckbox> {
  MyoroGroupCheckboxConfiguration get _configuration => widget.configuration;

  MyoroGroupCheckboxController? _localController;
  MyoroGroupCheckboxController get _controller {
    return widget.controller ?? (_localController ??= MyoroGroupCheckboxControllerImpl(_configuration));
  }

  ValueNotifier<MyoroGroupCheckboxItems> get _checkboxesNotifier => _controller._checkboxesNotifier;

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: _checkboxesNotifier,
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
                      _controller.toggle(entry.key, value);
                      _configuration.onChanged?.call(entry.key, _checkboxesNotifier.value);
                    },
                  ),
                );
              }).toList(),
        );
      },
    );
  }
}
