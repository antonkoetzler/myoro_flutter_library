part of '../myoro_tab_view.dart';

/// Section where the traversal buttons of each tab in a [MyoroTabView] resides.
final class _Tabs extends StatelessWidget {
  const _Tabs(this._selectedTab);

  final MyoroTabViewTab _selectedTab;

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTabViewViewModel>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final tabs = configuration.tabs;

    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        // children: tabs.map((t) => Expanded(child: _TabButton(_selectedTab, t))).toList(),
        children: [
          for (int i = 0; i < tabs.length; i++) ...[
            Expanded(child: _TabButton(tabs[i], _selectedTab)),
            if (i != tabs.length - 1) const _Divider(Axis.vertical),
          ],
        ],
      ),
    );
  }
}
