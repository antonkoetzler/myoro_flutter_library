import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_material_app_widget_showcase_bloc/myoro_material_app_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroMaterialApp].
final class MyoroMaterialAppWidgetShowcase extends StatelessWidget {
  const MyoroMaterialAppWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroMaterialAppWidgetShowcaseBloc(),
      child: const WidgetShowcase(widget: _Widget(), widgetOptions: [_ThemeModeOption()]),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroMaterialAppWidgetShowcaseThemeExtension>();

    return BlocBuilder<MyoroMaterialAppWidgetShowcaseBloc, MyoroMaterialAppWidgetShowcaseState>(
      builder: (_, MyoroMaterialAppWidgetShowcaseState state) {
        return MyoroMaterialApp(
          configuration: MyoroMaterialAppConfiguration(
            title: 'MyoroMaterialApp Storyboard',
            themeMode: state.themeMode,
            home: MyoroScreen(MyoroScreenConfiguration(appBar: _AppBar(themeExtension), body: const SizedBox.shrink())),
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
          Icon(_themeExtension.appBarLogoIcon, color: _themeExtension.appBarContentColor),
          spacing,
          Text('Hello, World!', style: _themeExtension.themeModeOptionTextStyle),
          const Spacer(),
          MyoroIconTextButton(
            configuration: MyoroIconTextButtonConfiguration(
              buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) {}),
              iconConfiguration: MyoroIconTextButtonIconConfiguration(icon: _themeExtension.appBarMenuButtonIcon),
            ),
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
    final themeExtension = context.resolveThemeExtension<MyoroMaterialAppWidgetShowcaseThemeExtension>();

    return BlocBuilder<MyoroMaterialAppWidgetShowcaseBloc, MyoroMaterialAppWidgetShowcaseState>(
      builder: (_, MyoroMaterialAppWidgetShowcaseState state) {
        final bool isDarkMode = state.themeMode == ThemeMode.dark;
        final IconData buttonIcon =
            isDarkMode
                ? themeExtension.themeModeOptionButtonDarkModeIcon
                : themeExtension.themeModeOptionButtonLightModeIcon;

        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyoroIconTextButton(
              configuration: MyoroIconTextButtonConfiguration(
                buttonConfiguration: MyoroButtonConfiguration(
                  borderBuilder: (_) => MyoroButtonVariantEnum.border(context),
                  onTapUp: (_) => _onTapUp(context),
                ),
                iconConfiguration: MyoroIconTextButtonIconConfiguration(icon: buttonIcon),
              ),
            ),
            SizedBox(width: themeExtension.themeModeOptionSpacing),
            Flexible(
              child: Text('${isDarkMode ? 'Dark' : 'Light'} mode', style: themeExtension.themeModeOptionTextStyle),
            ),
          ],
        );
      },
    );
  }

  void _onTapUp(BuildContext context) {
    context.resolveBloc<MyoroMaterialAppWidgetShowcaseBloc>().add(const ToggleThemeModeEvent());
  }
}
