import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A checkbox that can have a label on the right side of it.
class MyoroCheckbox extends StatefulWidget {
  /// Controller.
  final MyoroCheckboxController? controller;

  /// Configuration.
  final MyoroCheckboxConfiguration? configuration;

  const MyoroCheckbox({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroCheckbox]: [controller] (x)or [configuration] must be provided.',
      );

  @override
  State<MyoroCheckbox> createState() => _MyoroCheckboxState();
}

final class _MyoroCheckboxState extends State<MyoroCheckbox> {
  MyoroCheckboxController? _localController;
  MyoroCheckboxController get _controller {
    return widget.controller ?? (_localController ??= MyoroCheckboxController(configuration: widget.configuration!));
  }

  MyoroCheckboxConfiguration get _configuration => _controller.state.configuration;

  @override
  void didUpdateWidget(covariant MyoroCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.configuration != oldWidget.configuration) {
      _controller.state.configuration = widget.configuration!;
    }
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
          valueListenable: _controller,
          builder: (_, bool enabled, __) {
            // This [SizedBox] removes the default margin in [Checkbox].
            return SizedBox(
              width: 20,
              height: 20,
              child: Checkbox(
                value: enabled,
                activeColor: themeExtension.activeColor,
                checkColor: themeExtension.checkColor,
                hoverColor: themeExtension.hoverColor,
                focusColor: themeExtension.focusColor,
                splashRadius: themeExtension.splashRadius,
                onChanged: (_) {
                  _configuration.onChanged?.call(!enabled);
                  _controller.toggle(enabled);
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
