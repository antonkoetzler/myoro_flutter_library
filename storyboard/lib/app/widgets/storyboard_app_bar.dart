import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

final class StoryboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StoryboardAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 5);

  @override
  Widget build(BuildContext context) {
    return MyoroAppBar(
      bordered: true,
      child: Row(
        children: [
          const _TitleAndHeader(),
          const Spacer(),
          MyoroIconTextHoverButton(icon: Icons.sunny, onPressed: () {}),
        ],
      ),
    );
  }
}

final class _TitleAndHeader extends StatelessWidget {
  const _TitleAndHeader();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<StoryboardAppBarThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'myoro_flutter_library storyboard',
          style: themeExtension.titleTextStyle,
        ),
        Text(
          'Used for testing/visualizing widgets and the design system',
          style: themeExtension.subtitleTextStyle,
        ),
      ],
    );
  }
}
