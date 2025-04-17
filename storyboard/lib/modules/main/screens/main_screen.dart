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
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MainScreenThemeExtension>();
    return MyoroAppBar(
      bordered: true,
      child: Row(
        spacing: themeExtension.headerToggleThemeButtonSpacing,
        children: const [_Header(), _ToggleThemeButton()],
      ),
    );
  }
}

final class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    this is where you currently are
    return const Column(
      mainAxisSize: MainAxisSize.min,
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

final class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

final class _BodyState extends State<_Body> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widgetListingEnumValuesLength = WidgetListingEnum.values.length;

    return Scrollbar(
      controller: _scrollController,
      thumbVisibility: true,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: widgetListingEnumValuesLength,
        itemBuilder: (_, int index) {
          final bool isLastValue = index == widgetListingEnumValuesLength - 1;
          final WidgetListingEnum value = WidgetListingEnum.values[index];

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _CategoryButton(value),
              if (!isLastValue) const _Divider(),
            ],
          );
        },
      ),
    );
  }
}

final class _CategoryButton extends StatelessWidget {
  final WidgetListingEnum _listing;

  const _CategoryButton(this._listing);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MainScreenThemeExtension>();
    return MyoroIconTextHoverButton(
      text: _listing.category,
      textStyle: themeExtension.categoryButtonTextStyle,
      configuration: themeExtension.categoryButtonConfiguration,
      onPressed: () => throw UnimplementedError(),
    );
  }
}

final class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return const MyoroBasicDivider(
      configuration: MyoroBasicDividerConfiguration(direction: Axis.horizontal),
    );
  }
}
