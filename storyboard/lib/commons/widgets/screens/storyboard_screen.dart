import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Base screen [Widget].
final class StoryboardScreen extends StatelessWidget {
  /// Callback that builds [_PreviousPageButton].
  final VoidCallback? onPrevious;

  /// Text of [_HeaderTitleText].
  final String? headerTitleText;

  /// Text of [_HeaderSubtitleText].
  final String? headerSubtitleText;

  /// [MyoroScreen.body].
  final Widget body;

  const StoryboardScreen({
    super.key,
    this.onPrevious,
    this.headerTitleText,
    this.headerSubtitleText,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return MyoroScreen(
      appBar: _AppBar(onPrevious, headerTitleText, headerSubtitleText),
      body: body,
    );
  }
}

final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? _onPrevious;
  final String? _headerTitleText;
  final String? _headerSubtitleText;

  const _AppBar(
    this._onPrevious,
    this._headerTitleText,
    this._headerSubtitleText,
  );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<StoryboardScreenThemeExtension>();
    final bool headerTitleTextIsNotNull = _headerTitleText != null;
    final bool headerSubtitleTextIsNotNull = _headerSubtitleText != null;

    return MyoroAppBar(
      bordered: true,
      child: Row(
        spacing: themeExtension.spacing,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: themeExtension.spacing / 2,
            children: [
              if (_onPrevious != null) _PreviousPageButton(_onPrevious),
              if (headerTitleTextIsNotNull || headerSubtitleTextIsNotNull)
                _Header(_headerTitleText, _headerSubtitleText),
            ],
          ),
          const _ToggleThemeButton(),
        ],
      ),
    );
  }
}

final class _Header extends StatelessWidget {
  final String? _headerTitleText;
  final String? _headerSubtitleText;

  const _Header(this._headerTitleText, this._headerSubtitleText);

  @override
  Widget build(BuildContext context) {
    final bool headerTitleTextIsNotNull = _headerTitleText != null;
    final bool headerSubtitleTextIsNotNull = _headerSubtitleText != null;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (headerTitleTextIsNotNull)
          Flexible(child: _HeaderTitleText(_headerTitleText)),
        if (headerSubtitleTextIsNotNull)
          Flexible(child: _HeaderSubtitleText(_headerSubtitleText)),
      ],
    );
  }
}

final class _HeaderTitleText extends StatelessWidget {
  final String _text;

  const _HeaderTitleText(this._text);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<StoryboardScreenThemeExtension>();
    return _HeaderText(text: _text, style: themeExtension.headerTitleTextStyle);
  }
}

final class _PreviousPageButton extends StatelessWidget {
  final VoidCallback _onPrevious;

  const _PreviousPageButton(this._onPrevious);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<StoryboardScreenThemeExtension>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        padding: themeExtension.previousPageButtonPadding,
        iconConfiguration: MyoroIconTextButtonIconConfiguration(
          icon: themeExtension.previousPageButtonIcon,
        ),
        onTapUp: (_) => _onPrevious(),
      ),
    );
  }
}

final class _HeaderSubtitleText extends StatelessWidget {
  final String _text;

  const _HeaderSubtitleText(this._text);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<StoryboardScreenThemeExtension>();
    return _HeaderText(
      text: _text,
      style: themeExtension.headerSubtitleTextStyle,
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

final class _ToggleThemeButton extends StatelessWidget {
  const _ToggleThemeButton();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<StoryboardScreenThemeExtension>();
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        iconConfiguration: MyoroIconTextButtonIconConfiguration(
          icon: themeExtension.toggleThemeButtonIcon,
        ),
        onTapUp: (_) => _onTapUp(context),
      ),
    );
  }

  void _onTapUp(BuildContext context) {
    final themeModeCubit = context.resolveBloc<ThemeModeCubit>();
    themeModeCubit.toggle();
  }
}
