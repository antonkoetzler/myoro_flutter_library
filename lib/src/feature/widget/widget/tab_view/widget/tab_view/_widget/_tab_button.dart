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
    final tabButtonIconSize = tabViewThemeExtension.tabButtonIconSize;
    final tabButtonTextStyle = tabViewThemeExtension.tabButtonTextStyle;
    final tabButtonIdleColor = tabViewThemeExtension.tabButtonIdleColor;
    final tabButtonHoverColor = tabViewThemeExtension.tabButtonHoverColor;
    final tabButtonTapColor = tabViewThemeExtension.tabButtonTapColor;
    final tabButtonBorderRadius = tabViewThemeExtension.tabButtonBorderRadius;

    final iconTextButtonThemeExtension = MyoroIconTextButtonThemeExtension.fromVariant(
      MyoroButtonPrimaryVariantThemeExtension.builder(context.isDarkMode, context.colorScheme),
    );

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
      themeExtension: iconTextButtonThemeExtension.copyWith(
        backgroundIdleColor: tabButtonIdleColor,
        backgroundIdleColorProvided: tabButtonIdleColor != null && isSelected,
        backgroundHoverColor: tabButtonHoverColor,
        backgroundHoverColorProvided: tabButtonHoverColor != null && isSelected,
        backgroundTapColor: tabButtonTapColor,
        backgroundTapColorProvided: tabButtonTapColor != null && isSelected,
        borderRadius: tabButtonBorderRadius,
        borderRadiusProvided: tabButtonBorderRadius != null,
      ),
    );
  }
}
