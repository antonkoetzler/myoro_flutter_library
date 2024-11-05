import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class StoryboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StoryboardAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 3);

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
    return Column(
      spacing: 3,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'myoro_flutter_library storyboard',
          style: MyoroTypographyTheme.boldMedium(context).copyWith(height: 0.7),
        ),
        Text(
          'Used for testing/visualizing widgets and the design system',
          style: MyoroTypographyTheme.italicSmall(context),
        ),
      ],
    );
  }
}
