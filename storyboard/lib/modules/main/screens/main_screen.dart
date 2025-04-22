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
    return const MyoroScreen(appBar: _AppBar(), body: _Body());
  }
}

final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MainScreenThemeExtension>();
    return MyoroAppBar(
      bordered: true,
      child: Row(
        spacing: themeExtension.headerToggleThemeButtonSpacing,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [_Header(), _ToggleThemeButton()],
      ),
    );
  }
}

final class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(child: _HeaderTitleText()),
        Flexible(child: _HeaderSubtitleText()),
      ],
    );
  }
}

final class _HeaderText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const _HeaderText({required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: style,
    );
  }
}

final class _HeaderTitleText extends StatelessWidget {
  const _HeaderTitleText();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MainScreenThemeExtension>();
    return _HeaderText(
      text: 'MFL\'s Storyboard',
      style: themeExtension.headerTitleTextStyle,
    );
  }
}

final class _HeaderSubtitleText extends StatelessWidget {
  const _HeaderSubtitleText();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MainScreenThemeExtension>();
    return _HeaderText(
      text: 'Application to visualize and create MFL widgets.',
      style: themeExtension.headerSubtitleTextStyle,
    );
  }
}

final class _ToggleThemeButton extends StatelessWidget {
  const _ToggleThemeButton();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MainScreenThemeExtension>();
    return MyoroIconTextHoverButton(
      icon: themeExtension.toggleThemeButtonIcon,
      onPressed: () => _onPressed(context),
    );
  }

  void _onPressed(BuildContext context) {
    final themeModeCubit = context.resolveBloc<ThemeModeCubit>();
    themeModeCubit.toggle();
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
    return Column(
      children:
          _widgetListingEnum.widgetNames.map<Widget>(_buttonBuilder).toList(),
    );
  }

  Widget _buttonBuilder(String widgetName) {
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroIconTextButtonTextConfiguration(
          text: widgetName,
        ),
      ),
    );
  }
}
