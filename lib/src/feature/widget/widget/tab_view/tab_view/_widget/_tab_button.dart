part of '../myoro_tab_view.dart';

/// Tab traversal button of [MyoroTabView].
final class _TabButton extends StatelessWidget {
  const _TabButton(this._tab, this._selectedTab);

  final MyoroTabViewTab _tab;
  final MyoroTabViewTab _selectedTab;

  @override
  Widget build(context) {
    final isSelected = _tab == _selectedTab;

    final tabViewThemeExtension = context.resolveThemeExtension<MyoroTabViewThemeExtension>();
    final style = context.watch<MyoroTabViewStyle>();
    final tabButtonIconSize = style.tabButtonIconSize ?? tabViewThemeExtension.tabButtonIconSize;
    final tabButtonTextStyle = style.tabButtonTextStyle ?? tabViewThemeExtension.tabButtonTextStyle;
    final tabButtonBorderRadius = style.tabButtonBorderRadius ?? tabViewThemeExtension.tabButtonBorderRadius;

    final decorationThemeExtension = context.resolveThemeExtension<MyoroDecorationThemeExtension>();
    final primaryBackgroundHoverColor = decorationThemeExtension.primaryBackgroundHoverColor;

    final viewModel = context.read<MyoroTabViewViewModel>();
    final selectTab = viewModel.selectTab;

    return MyoroIconTextButton(
      style: const MyoroIconTextButtonStyle().copyWith(
        borderRadius: tabButtonBorderRadius,
        backgroundIdleColor: isSelected ? primaryBackgroundHoverColor : null,
      ),
      iconConfiguration: _tab.icon != null ? MyoroIconConfiguration(icon: _tab.icon!, size: tabButtonIconSize) : null,
      text: _tab.text,
      textConfiguration: MyoroTextConfiguration(style: tabButtonTextStyle),
      onTapUp: (_, _) => selectTab(_tab),
    );
  }
}
