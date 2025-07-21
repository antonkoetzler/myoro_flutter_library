part of '../main_screen.dart';

/// Button/item of [_WidgetListingAccordionItemContent].
final class _WidgetListingAccordionItemContentButton extends StatelessWidget {
  const _WidgetListingAccordionItemContentButton(this._widgetName);

  final String _widgetName;

  @override
  Widget build(context) {
    final viewModel = context.read<MainScreenViewModel>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        onTapUp: (_) => viewModel.widgetListingAccordionItemContentButtonOnTapUp(context, _widgetName),
        borderBuilder: (_) => MyoroButtonStyleEnum.border(context),
        textConfiguration: MyoroTextConfiguration(text: _widgetName),
      ),
    );
  }
}
