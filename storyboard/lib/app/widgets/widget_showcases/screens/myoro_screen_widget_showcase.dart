import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroScreen].
final class MyoroScreenWidgetShowcase extends StatelessWidget {
  const MyoroScreenWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) => const WidgetShowcase(widget: _Widget());
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) =>
      const MyoroScreen(appBar: _AppBar(), body: _Body());
}

final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context
            .resolveThemeExtension<MyoroScreenWidgetShowcaseThemeExtension>();

    return MyoroAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('MyoroScreen', style: themeExtension.appBarTitleTextStyle),
              Text(
                'A widget used to create new [Scaffold]s (screens)',
                style: themeExtension.appBarSubtitleTextStyle,
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyoroIconTextHoverButton(
                icon: themeExtension.appBarMenuButtonIcon,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context
            .resolveThemeExtension<MyoroScreenWidgetShowcaseThemeExtension>();

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: themeExtension.bodySpacing,
        children: [
          ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: themeExtension.bodyImageBorderRadius,
            child: Image.asset(
              'assets/images/happy_cat.jpg',
              width: themeExtension.bodyImageSize,
            ),
          ),
          Text(
            'The contents of the screen would go here.',
            style: themeExtension.bodyTextStyle,
          ),
        ],
      ),
    );
  }
}
