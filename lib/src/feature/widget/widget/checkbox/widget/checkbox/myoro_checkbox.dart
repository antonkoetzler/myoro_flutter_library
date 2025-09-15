import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_checkbox.dart';
part '_widget/_label.dart';

/// A checkbox that can have a label on the right side of it.
class MyoroCheckbox extends StatefulWidget {
  const MyoroCheckbox({super.key, required this.configuration, this.themeExtension});

  /// Configuration.
  final MyoroCheckboxConfiguration configuration;

  /// Theme extension.
  final MyoroCheckboxThemeExtension? themeExtension;

  @override
  State<MyoroCheckbox> createState() => _MyoroCheckboxState();
}

final class _MyoroCheckboxState extends State<MyoroCheckbox> {
  MyoroCheckboxConfiguration get _configuration => widget.configuration;
  MyoroCheckboxThemeExtension get _themeExtension {
    final appContext = context.read<MyoroAppContext>();
    return widget.themeExtension ?? appContext.resolveThemeExtension<MyoroCheckboxThemeExtension>();
  }

  late final MyoroCheckboxViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = MyoroCheckboxViewModel(_configuration);
  }

  @override
  void didUpdateWidget(covariant MyoroCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state.configuration = widget.configuration;
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final spacing = _themeExtension.spacing ?? 0;

    final state = _viewModel.state;
    final configuration = state.configuration;
    final label = configuration.label;

    return InheritedProvider.value(
      value: _viewModel,
      child: MyoroSingularThemeExtensionWrapper(
        themeExtension: _themeExtension,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTapUp: _viewModel.onTapUp,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: spacing,
              children: [
                const _Checkbox(),
                if (label.isNotEmpty) const Flexible(child: _Label()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
