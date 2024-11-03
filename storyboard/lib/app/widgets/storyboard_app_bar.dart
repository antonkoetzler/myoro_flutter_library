import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class StoryboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StoryboardAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'myoro_flutter_library storyboard',
                style: TypographyDesignSystem.boldMedium(context),
              ),
              Text(
                'Used for testing/visualizing widgets and the design system',
                style: TypographyDesignSystem.italicSmall(context),
              ),
            ],
          ),
          const Spacer(),
          IconTextHoverButton(
            icon: Icons.sunny,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
