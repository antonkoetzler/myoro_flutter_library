import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

final class StoryboardAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const StoryboardAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);

  @override
  Widget build(BuildContext context) {
    return const MyoroAppBar(
      bordered: true,
      child: Row(children: [Expanded(child: _TitleAndHeader()), _Buttons()]),
    );
  }
}

final class _TitleAndHeader extends StatelessWidget {
  const _TitleAndHeader();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<StoryboardAppBarThemeExtension>();

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

final class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: context
          .resolveThemeExtension<StoryboardAppBarThemeExtension>()
          .buttonSpacing,
      children: const [_ShowWidgetShowcaseButton(), _ToggleThemeButton()],
    );
  }
}

final class _ShowWidgetShowcaseButton extends StatelessWidget {
  const _ShowWidgetShowcaseButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WidgetShowcaseBloc, WidgetShowcaseState>(
      builder: (_, WidgetShowcaseState state) {
        if (!state.displayingWidgetShowcase) return const SizedBox.shrink();

        return MyoroIconTextHoverButton(
          icon: context
              .resolveThemeExtension<StoryboardAppBarThemeExtension>()
              .showWidgetOptionsButtonIcon,
          configuration: MyoroHoverButtonConfiguration(
            tooltip: 'Show widget showcase options',
            isHovered: state.displayingWidgetOptions,
          ),
          onPressed: () => context.resolveBloc<WidgetShowcaseBloc>().add(
                const ToggleWidgetOptionsDisplayEvent(),
              ),
        );
      },
    );
  }
}

final class _ToggleThemeButton extends StatelessWidget {
  const _ToggleThemeButton();

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextHoverButton(
      icon: context
          .resolveThemeExtension<StoryboardAppBarThemeExtension>()
          .themeButtonIcon,
      configuration: const MyoroHoverButtonConfiguration(
        tooltip: 'Toggle theme',
      ),
      onPressed: () => context.resolveBloc<ThemeModeCubit>().toggle(),
    );
  }
}
