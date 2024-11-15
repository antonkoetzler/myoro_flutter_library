import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

final class StoryboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StoryboardAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 5);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<StoryboardAppBarThemeExtension>();

    return MyoroAppBar(
      bordered: true,
      child: Row(
        children: [
          const Expanded(child: _TitleAndHeader()),
          Wrap(
            spacing: themeExtension.buttonSpacing,
            children: [
              BlocBuilder<WidgetShowcaseBloc, WidgetShowcaseState>(
                builder: (_, WidgetShowcaseState state) {
                  if (!state.displayingWidgetShowcase) return const SizedBox.shrink();

                  return MyoroIconTextHoverButton(
                    icon: themeExtension.showWidgetOptionsButtonIcon,
                    tooltip: 'Show widget showcase options',
                    isHovered: state.displayingWidgetOptions,
                    onPressed: () => context.resolveBloc<WidgetShowcaseBloc>().add(const ToggleWidgetOptionsDisplayEvent()),
                  );
                },
              ),
              MyoroIconTextHoverButton(
                icon: themeExtension.themeButtonIcon,
                tooltip: 'Toggle theme', // TODO
                onPressed: () {},
              ),
            ],
          ),
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
          overflow: TextOverflow.ellipsis,
          style: themeExtension.titleTextStyle,
        ),
        Text(
          'Used for testing/visualizing widgets and the design system',
          overflow: TextOverflow.ellipsis,
          style: themeExtension.subtitleTextStyle,
        ),
      ],
    );
  }
}
