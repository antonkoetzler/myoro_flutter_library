import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// A checkbox that can have a label on the right side of it.
class MyoroCheckbox extends MyoroStatefulWidget {
  const MyoroCheckbox({super.key, super.createViewModel, required this.configuration});

  /// Configuration.
  final MyoroCheckboxConfiguration configuration;

  @override
  State<MyoroCheckbox> createState() => _MyoroCheckboxState();
}

final class _MyoroCheckboxState extends State<MyoroCheckbox> {
  bool get _createViewModel => widget.createViewModel;

  MyoroCheckboxViewModel? _localViewModel;
  MyoroCheckboxViewModel get _viewModel {
    final viewModel = _createViewModel
        ? (_localViewModel ??= MyoroCheckboxViewModel())
        : context.read<MyoroCheckboxViewModel>();
    return viewModel..state.configuration = widget.configuration;
  }

  @override
  void didUpdateWidget(covariant MyoroCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state.configuration = widget.configuration;
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();

    final child = MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTapUp: _viewModel.onTapUp,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: themeExtension.spacing,
          children: [
            ValueListenableBuilder(
              valueListenable: _viewModel.state.enabledController,
              builder: (_, bool enabled, _) {
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
                    onChanged: _viewModel.onTapUp,
                  ),
                );
              },
            ),
            if (_viewModel.state.configuration.label.isNotEmpty) ...[
              Flexible(
                child: Text(
                  _viewModel.state.configuration.label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: _viewModel.state.configuration.labelTextStyle ?? themeExtension.labelTextStyle,
                ),
              ),
            ],
          ],
        ),
      ),
    );

    return _createViewModel ? InheritedProvider.value(value: _viewModel, child: child) : child;
  }
}
