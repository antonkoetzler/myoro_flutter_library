part of '../myoro_tab_view.dart';

/// Tab traversal button of [MyoroTabView].
final class _TabButton extends StatelessWidget {
  const _TabButton(this._tab, this._selectedTab);

  final MyoroTabViewTab _tab;
  final MyoroTabViewTab _selectedTab;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroTabViewThemeExtension>();

    final viewModel = context.read<MyoroTabViewViewModel>();
    final state = viewModel.state;
    final configuration = state.configuration;

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        iconConfiguration: _tab.icon != null
            ? MyoroIconConfiguration(
                icon: _tab.icon!,
                size: configuration.tabButtonIconSize ?? themeExtension.tabButtonIconSize,
              )
            : null,
        textConfiguration: _tab.text != null
            ? MyoroTextConfiguration(
                text: _tab.text!,
                style: configuration.tabButtonTextStyle ?? themeExtension.tabButtonTextStyle,
              )
            : null,
        backgroundColorBuilder: _selectedTab == _tab ? themeExtension.selectedTabButtonBackgroundColorBuilder : null,
        borderRadius: themeExtension.tabButtonBorderRadius,
        onTapUp: (_) => viewModel.selectTab(_tab),
      ),
    );
  }
}
