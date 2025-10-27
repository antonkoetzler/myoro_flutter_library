import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_divider.dart';
part '_widget/_tab_button.dart';
part '_widget/_tabs.dart';

/// Tab view of MFL.
///
/// Top bar with the list of tabs and below, the content of the selected tab.
final class MyoroTabView extends StatefulWidget {
  MyoroTabView({
    super.key,
    this.controller,
    this.initiallySelectedTabIndex = 0,
    this.tabs = const [],
    this.style = const MyoroTabViewStyle(),
  }) : assert(controller != null || tabs.isNotEmpty, '[MyoroTabView]: [controller] or [tabs] must be provided.');

  /// Controller.
  final MyoroTabViewController? controller;

  /// Initially selected tab index.
  final int initiallySelectedTabIndex;

  /// Tabs of the [MyoroTabView].
  final List<MyoroTabViewTab> tabs;

  /// Style.
  final MyoroTabViewStyle style;

  @override
  State<MyoroTabView> createState() => _MyoroTabViewState();
}

final class _MyoroTabViewState extends State<MyoroTabView> {
  MyoroTabViewStyle get _style {
    return widget.style;
  }

  MyoroTabViewViewModel? _localViewModel;
  MyoroTabViewViewModel get _viewModel {
    // ignore: invalid_use_of_protected_member
    return widget.controller?.viewModel ??
        (_localViewModel ??= MyoroTabViewViewModel(
          initiallySelectedTabIndex: widget.initiallySelectedTabIndex,
          tabs: widget.tabs,
        ));
  }

  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: _style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: ValueListenableBuilder(
        valueListenable: _viewModel.state.selectedTabNotifier,
        builder: (_, selectedTab, _) {
          return Column(
            children: [
              _Tabs(selectedTab),
              const _Divider(Axis.horizontal),
              Expanded(child: selectedTab.content),
            ],
          );
        },
      ),
    );
  }
}
