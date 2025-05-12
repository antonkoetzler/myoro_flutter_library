import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Base screen [Widget].
final class StoryboardScreen extends StatelessWidget {
  /// Callback that builds [_PreviousPageButton].
  final VoidCallback? onPrevious;

  /// Text of [_Title].
  final String title;

  /// [MyoroScreen.body].
  final Widget body;

  const StoryboardScreen({super.key, this.onPrevious, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return MyoroScreen(
      configuration: MyoroScreenConfiguration(appBar: _AppBar(onPrevious, title), body: body),
    );
  }
}

final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? _onPrevious;
  final String _title;

  const _AppBar(this._onPrevious, this._title);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<StoryboardScreenThemeExtension>();

    return MyoroAppBar(
      configuration: MyoroAppBarConfiguration(
        bordered: true,
        child: Row(
          spacing: themeExtension.spacing,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              spacing: themeExtension.spacing / 2,
              children: [if (_onPrevious != null) _PreviousPageButton(_onPrevious), _Title(_title)],
            ),
            const _ToggleThemeButton(),
          ],
        ),
      ),
    );
  }
}

final class _Title extends StatelessWidget {
  final String _text;

  const _Title(this._text);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<StoryboardScreenThemeExtension>();
    return _HeaderText(text: _text, style: themeExtension.titleTextStyle);
  }
}

final class _PreviousPageButton extends StatelessWidget {
  final VoidCallback _onPrevious;

  const _PreviousPageButton(this._onPrevious);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<StoryboardScreenThemeExtension>();

    return _Button(themeExtension.previousPageButtonIcon, _onPrevious);
  }
}

final class _HeaderText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const _HeaderText({required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(text, maxLines: 1, overflow: TextOverflow.ellipsis, style: style);
  }
}

final class _ToggleThemeButton extends StatelessWidget {
  const _ToggleThemeButton();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<StoryboardScreenThemeExtension>();
    return _Button(themeExtension.toggleThemeButtonIcon, () => _onTapUp(context));
  }

  void _onTapUp(BuildContext context) {
    final themeModeCubit = context.resolveBloc<ThemeModeCubit>();
    themeModeCubit.toggle();
  }
}

final class _Button extends StatelessWidget {
  final IconData _icon;
  final VoidCallback _onTapUp;

  const _Button(this._icon, this._onTapUp);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<StoryboardScreenThemeExtension>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => _onTapUp()),
        iconConfiguration: MyoroIconTextButtonIconConfiguration(icon: _icon),
        padding: themeExtension.buttonPadding,
      ),
    );
  }
}
