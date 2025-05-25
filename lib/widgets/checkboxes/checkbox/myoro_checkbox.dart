import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// A checkbox that can have a label on the right side of it.
class MyoroCheckbox extends StatefulWidget {
  /// Configuration.
  final MyoroCheckboxConfiguration configuration;

  const MyoroCheckbox({super.key, required this.configuration});

  @override
  State<MyoroCheckbox> createState() => _MyoroCheckboxState();
}

final class _MyoroCheckboxState extends State<MyoroCheckbox> {
  late final _viewModel = MyoroCheckboxViewModel(widget.configuration);

  @override
  void didUpdateWidget(covariant MyoroCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.configuration != _viewModel.state.configuration) {
      _viewModel.state.configuration = widget.configuration;
    }
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();

    return InheritedProvider.value(
      value: _viewModel,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: themeExtension.spacing,
        children: [
          ValueListenableBuilder(
            valueListenable: _viewModel.state.enabledController,
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
                    _viewModel.state.configuration.onChanged?.call(!enabled);
                    _viewModel.toggle(enabled);
                  },
                ),
              );
            },
          ),
          if (_viewModel.state.configuration.label?.isNotEmpty == true) ...[
            Flexible(
              child: Text(
                _viewModel.state.configuration.label!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: _viewModel.state.configuration.labelTextStyle ?? themeExtension.labelTextStyle,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
