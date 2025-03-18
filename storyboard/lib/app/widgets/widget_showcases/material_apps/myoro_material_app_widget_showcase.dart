import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_material_app_widget_showcase_bloc/myoro_material_app_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroMaterialApp].
final class MyoroMaterialAppWidgetShowcase extends StatelessWidget {
  const MyoroMaterialAppWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroMaterialAppWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [_ThemeModeOption()],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context
        .resolveThemeExtension<MyoroMaterialAppWidgetShowcaseThemeExtension>();

    return BlocBuilder<MyoroMaterialAppWidgetShowcaseBloc,
        MyoroMaterialAppWidgetShowcaseState>(
      builder: (_, MyoroMaterialAppWidgetShowcaseState state) {
        return MyoroMaterialApp(
          title: 'MyoroMaterialApp Storyboard',
          themeMode: state.themeMode,
          home: MyoroScreen(
            appBar: _AppBar(themeExtension),
            body: const SizedBox.shrink(),
          ),
        );
      },
    );
  }
}

final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  final MyoroMaterialAppWidgetShowcaseThemeExtension _themeExtension;

  const _AppBar(this._themeExtension);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final spacing = SizedBox(width: _themeExtension.appBarSpacing);

    return MyoroAppBar(
      child: Row(
        children: [
          Icon(
            _themeExtension.appBarLogoIcon,
            color: _themeExtension.appBarContentColor,
          ),
          spacing,
          Text(
            'Hello, World!',
            style: _themeExtension.themeModeOptionTextStyle,
          ),
          const Spacer(),
          MyoroIconTextHoverButton(
            icon: _themeExtension.appBarMenuButtonIcon,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

final class _ThemeModeOption extends StatelessWidget {
  const _ThemeModeOption();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context
        .resolveThemeExtension<MyoroMaterialAppWidgetShowcaseThemeExtension>();

    return BlocBuilder<MyoroMaterialAppWidgetShowcaseBloc,
        MyoroMaterialAppWidgetShowcaseState>(
      builder: (_, MyoroMaterialAppWidgetShowcaseState state) {
        final isDarkMode = state.themeMode == ThemeMode.dark;

        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyoroIconTextHoverButton(
              icon: isDarkMode
                  ? themeExtension.themeModeOptionButtonDarkModeIcon
                  : themeExtension.themeModeOptionButtonLightModeIcon,
              configuration: MyoroHoverButtonConfiguration(
                  bordered: themeExtension.themeModeOptionButtonBordered),
              onPressed: () => context
                  .resolveBloc<MyoroMaterialAppWidgetShowcaseBloc>()
                  .add(const ToggleThemeModeEvent()),
            ),
            SizedBox(width: themeExtension.themeModeOptionSpacing),
            Flexible(
              child: Text(
                '${isDarkMode ? 'Dark' : 'Light'} mode',
                style: themeExtension.themeModeOptionTextStyle,
              ),
            ),
          ],
        );
      },
    );
  }
}
