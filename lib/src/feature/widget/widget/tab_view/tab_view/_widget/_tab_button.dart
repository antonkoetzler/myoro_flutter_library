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
    final tabButtonIdleColor = style.tabButtonIdleColor ?? tabViewThemeExtension.tabButtonIdleColor;
    final tabButtonHoverColor = style.tabButtonHoverColor ?? tabViewThemeExtension.tabButtonHoverColor;
    final tabButtonTapColor = style.tabButtonTapColor ?? tabViewThemeExtension.tabButtonTapColor;
    final tabButtonBorderRadius = style.tabButtonBorderRadius ?? tabViewThemeExtension.tabButtonBorderRadius;

    final viewModel = context.read<MyoroTabViewViewModel>();
    final selectTab = viewModel.selectTab;

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        iconConfiguration: _tab.icon != null ? MyoroIconConfiguration(icon: _tab.icon!, size: tabButtonIconSize) : null,
        textConfiguration: _tab.text != null
            ? MyoroTextConfiguration(text: _tab.text!, style: tabButtonTextStyle)
            : null,
        onTapUp: (_) => selectTab(_tab),
      ),
      style: const MyoroIconTextButtonStyle().copyWith(
        backgroundIdleColor: isSelected ? tabButtonIdleColor : null,
        backgroundHoverColor: isSelected ? tabButtonHoverColor : null,
        backgroundTapColor: isSelected ? tabButtonTapColor : null,
        borderRadius: tabButtonBorderRadius,
      ),
    );
  }
}
