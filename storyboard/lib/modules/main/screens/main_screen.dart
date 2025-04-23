import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Main screen of Storyboard.
///
/// TODO: Needs to be tested.
final class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const StoryboardScreen(body: _Body());
  }
}

final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return MyoroAccordion(
      configuration: MyoroAccordionConfiguration(
        items:
            WidgetListingEnum.values
                .map<MyoroAccordionItem>(_itemBuilder)
                .toList(),
      ),
    );
  }

  MyoroAccordionItem _itemBuilder(WidgetListingEnum widgetListingEnum) {
    return MyoroAccordionItem(
      titleBuilder: (_) => _titleBuilder(widgetListingEnum),
      contentBuilder: (_) => _contentBuilder(widgetListingEnum),
    );
  }

  Widget _titleBuilder(WidgetListingEnum widgetListingEnum) {
    return Text(widgetListingEnum.categoryName);
  }

  Widget _contentBuilder(WidgetListingEnum widgetListingEnum) {
    return _WidgetCategoryDropdown(widgetListingEnum);
  }
}

final class _WidgetCategoryDropdown extends StatelessWidget {
  final WidgetListingEnum _widgetListingEnum;

  const _WidgetCategoryDropdown(this._widgetListingEnum);

  @override
  Widget build(BuildContext context) {
    final children =
        _widgetListingEnum.widgetNames.map<_WidgetCategoryDropdownButton>((
          String widgetName,
        ) {
          return _WidgetCategoryDropdownButton(widgetName);
        }).toList();

    return Column(children: children);
  }
}

final class _WidgetCategoryDropdownButton extends StatelessWidget {
  final String _widgetName;

  const _WidgetCategoryDropdownButton(this._widgetName);

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        borderRadius: BorderRadius.zero,
        onTapUp: (_) => _onTapUp(context),
        textConfiguration: MyoroIconTextButtonTextConfiguration(
          text: _widgetName,
        ),
      ),
    );
  }

  void _onTapUp(BuildContext context) {
    // TODO
    print('Hello');
  }
}
