import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Main screen of Storyboard.
final class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const StoryboardScreen(title: 'MFL Storyboard', body: _Body());
  }
}

final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return MyoroAccordion(
      configuration: MyoroAccordionConfiguration(
        items: StoryboardWidgetListingEnum.values.map<MyoroAccordionItem>(_itemBuilder).toList(),
      ),
    );
  }

  MyoroAccordionItem _itemBuilder(StoryboardWidgetListingEnum widgetListingEnum) {
    return MyoroAccordionItem(
      titleBuilder: (_) => _titleBuilder(widgetListingEnum),
      contentBuilder: (_) => _contentBuilder(widgetListingEnum),
    );
  }

  Widget _titleBuilder(StoryboardWidgetListingEnum widgetListingEnum) {
    return Text(widgetListingEnum.categoryName);
  }

  Widget _contentBuilder(StoryboardWidgetListingEnum widgetListingEnum) {
    return _WidgetCategoryDropdown(widgetListingEnum);
  }
}

final class _WidgetCategoryDropdown extends StatelessWidget {
  final StoryboardWidgetListingEnum _widgetListingEnum;

  const _WidgetCategoryDropdown(this._widgetListingEnum);

  @override
  Widget build(BuildContext context) {
    final children = _widgetListingEnum.widgetNames.map((String widgetName) {
      return _WidgetCategoryDropdownButton(widgetName);
    });
    return Column(children: children.toList());
  }
}

final class _WidgetCategoryDropdownButton extends StatelessWidget {
  final String _widgetName;

  const _WidgetCategoryDropdownButton(this._widgetName);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MainScreenThemeExtension>();

    return Padding(
      padding: themeExtension.widgetCategoryDropdownButtonPadding,
      child: MyoroIconTextButton(
        configuration: MyoroIconTextButtonConfiguration(
          buttonConfiguration: MyoroButtonConfiguration(
            onTapUp: (_) => _onTapUp(context),
            borderBuilder: (_) => MyoroButtonVariantEnum.border(context),
          ),
          textConfiguration: MyoroIconTextButtonTextConfiguration(text: _widgetName),
        ),
      ),
    );
  }

  void _onTapUp(BuildContext context) {
    context.push('/widget_showcase/$_widgetName');
  }
}
