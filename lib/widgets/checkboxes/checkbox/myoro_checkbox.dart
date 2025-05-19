import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'controller/myoro_checkbox_controller.dart';
part 'controller/myoro_checkbox_controller_impl.dart';
part 'models/myoro_checkbox_configuration.dart';
part 'myoro_checkbox_theme_extension.dart';

/// Function that is executed when the checkbox is changed.
typedef MyoroCheckboxOnChanged = void Function(bool value);

/// A checkbox that can have a label on the right side of it.
class MyoroCheckbox extends StatefulWidget {
  /// Controller.
  final MyoroCheckboxController? controller;

  /// Configuration.
  final MyoroCheckboxConfiguration configuration;

  const MyoroCheckbox({super.key, this.controller, required this.configuration});

  @override
  State<MyoroCheckbox> createState() => _MyoroCheckboxState();
}

final class _MyoroCheckboxState extends State<MyoroCheckbox> {
  MyoroCheckboxConfiguration get _configuration => widget.configuration;

  MyoroCheckboxController? _localController;
  MyoroCheckboxController get _controller {
    return widget.controller ?? (_localController ??= MyoroCheckboxControllerImpl(_configuration));
  }

  ValueNotifier<bool> get _enabledNotifier => _controller._enabledNotifier;

  @override
  void didUpdateWidget(covariant MyoroCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != null) return;
    _controller._configuration = _configuration;
    _controller._enabledNotifier.value = _configuration.initialValue;
  }

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: themeExtension.spacing,
      children: [
        ValueListenableBuilder(
          valueListenable: _enabledNotifier,
          builder: (_, bool value, __) {
            // This [SizedBox] removes the default margin in [Checkbox].
            return SizedBox(
              width: 20,
              height: 20,
              child: Checkbox(
                value: value,
                activeColor: themeExtension.activeColor,
                checkColor: themeExtension.checkColor,
                hoverColor: themeExtension.hoverColor,
                focusColor: themeExtension.focusColor,
                splashRadius: themeExtension.splashRadius,
                onChanged: (_) {
                  _configuration.onChanged?.call(!_enabledNotifier.value);
                  _enabledNotifier.value = !_enabledNotifier.value;
                },
              ),
            );
          },
        ),
        if (_configuration.label?.isNotEmpty == true) ...[
          Flexible(
            child: Text(
              _configuration.label!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: _configuration.labelTextStyle ?? themeExtension.labelTextStyle,
            ),
          ),
        ],
      ],
    );
  }
}
