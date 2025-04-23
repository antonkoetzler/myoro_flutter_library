import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Base screen [Widget].
///
/// TODO: Needs to be tested.
final class StoryboardScreen extends StatelessWidget {
  /// [MyoroScreen.body].
  final Widget body;

  const StoryboardScreen({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return MyoroScreen(appBar: const _AppBar(), body: body);
  }
}

final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<StoryboardScreenThemeExtension>();
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
        context.resolveThemeExtension<StoryboardScreenThemeExtension>();
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
        context.resolveThemeExtension<StoryboardScreenThemeExtension>();
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
        context.resolveThemeExtension<StoryboardScreenThemeExtension>();
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
