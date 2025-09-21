part of '../bundle/myoro_accordion_bundle.dart';

/// Button of an [_Item].
final class _ItemTitleButton<T> extends StatelessWidget {
  const _ItemTitleButton(this._item, this._isSelected);

  final T _item;
  final bool _isSelected;

  @override
  Widget build(BuildContext context) {
    final accordionThemeExtension = MyoroAccordionThemeExtension.builder(
      context.isDarkMode,
      context.colorScheme,
      context.textTheme,
    );
    final itemTitleButtonSpacing = accordionThemeExtension.itemTitleButtonSpacing;
    final itemTitleButtonTitleTextStyle = accordionThemeExtension.itemTitleButtonTitleTextStyle;
    final itemTitleButtonContentPadding = accordionThemeExtension.itemTitleButtonContentPadding ?? EdgeInsets.zero;
    final itemTitleButtonSelectedBackgroundColor = accordionThemeExtension.itemTitleButtonSelectedBackgroundColor;

    final buttonThemeExtension = MyoroButtonThemeExtension.fromVariant(
      MyoroButtonPrimaryVariantThemeExtension.builder(context.isDarkMode, context.colorScheme),
    );
    final backgroundIdleColor = buttonThemeExtension.backgroundIdleColor;

    final viewModel = context.read<MyoroAccordionViewModel<T>>();
    final toggleItem = viewModel.toggleItem;
    final state = viewModel.state;
    final configuration = state.configuration;
    final titleBuilder = configuration.titleBuilder;

    final title = titleBuilder(_item, _isSelected);

    return MyoroButton(
      configuration: MyoroButtonConfiguration(onTapUp: (_) => toggleItem(_item)),
      themeExtension: buttonThemeExtension.copyWith(
        backgroundIdleColor: _isSelected ? itemTitleButtonSelectedBackgroundColor : backgroundIdleColor,
        borderRadiusProvided: false,
      ),
      builder: (context, tapStatus) => Padding(
        padding: itemTitleButtonContentPadding,
        child: Row(
          spacing: itemTitleButtonSpacing ?? 0,
          children: [
            Expanded(
              child: itemTitleButtonTitleTextStyle != null
                  ? DefaultTextStyle(style: itemTitleButtonTitleTextStyle, child: title)
                  : title,
            ),
            _ItemTitleButtonArrow(_isSelected),
          ],
        ),
      ),
    );
  }
}
