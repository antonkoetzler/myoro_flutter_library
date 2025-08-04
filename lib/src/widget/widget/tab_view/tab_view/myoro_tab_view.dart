import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_divider.dart';
part '_widget/_tab_button.dart';
part '_widget/_tabs.dart';

/// Tab view of MFL.
///
/// Top bar with the list of tabs and below, the content of the selected tab.
final class MyoroTabView extends MyoroStatefulWidget {
  const MyoroTabView({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroTabView]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroTabViewController? controller;

  /// Configuration.
  final MyoroTabViewConfiguration? configuration;

  @override
  State<MyoroTabView> createState() => _MyoroTabViewState();
}

final class _MyoroTabViewState extends State<MyoroTabView> {
  MyoroTabViewViewModel? _localViewModel;
  MyoroTabViewViewModel get _viewModel {
    // ignore: invalid_use_of_protected_member
    return widget.controller?.viewModel ?? (_localViewModel ??= MyoroTabViewViewModel(widget.configuration!));
  }

  @override
  Widget build(_) {
    return InheritedProvider.value(
      value: _viewModel,
      child: ValueListenableBuilder(
        valueListenable: _viewModel.state.selectedTabNotifier,
        builder: (_, selectedTab, _) {
          return Column(
            children: [_Tabs(selectedTab), const _Divider(Axis.horizontal), Expanded(child: selectedTab.content)],
          );
        },
      ),
    );
  }
}
