import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class StoryboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StoryboardAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 5,
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'myoro_flutter_library storyboard',
                        style: TypographyDesignSystem.boldMedium(context).copyWith(height: 0.7),
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
            ),
          ),
          const MyoroBasicDivider(Axis.horizontal),
        ],
      ),
    );
  }
}
