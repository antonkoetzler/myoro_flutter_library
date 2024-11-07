import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  windowManager.ensureInitialized();
  windowManager.setMinimumSize(const Size(600, 600));
  MyoroLocalDatabase.instance;
  runApp(const _App());
}

final class _App extends StatelessWidget {
  const _App();

  List<ThemeExtension> _themeExtensionsBuilder(ColorScheme colorScheme, TextTheme textTheme) {
    return [
      const StoryboardAppBarThemeExtension(),
      StoryboardBodyThemeExtension(
        sideBarMinWidth: 80,
        widgetListingCategoryPadding: const EdgeInsets.all(5),
        widgetListingCategoryDividerPadding: const EdgeInsets.only(
          top: 1,
          left: 10,
          right: 10,
        ),
        widgetListingCategoryDividerShortValue: 1,
        widgetListingCategoryDropdownButtonTextStyle: textTheme.titleMedium!,
        widgetListingCategoryDropdownButtonUnopenedIcon: Icons.keyboard_arrow_right,
        widgetListingCategoryDropdownButtonOpenedIcon: Icons.keyboard_arrow_down,
        widgetListingCategoryWidgetButtonContentCentered: MainAxisAlignment.center,
        widgetListingCategoryWidgetButtonTextStyle: textTheme.bodySmall!,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MyoroMaterialApp(
      title: 'myoro_flutter_library storyboard',
      themeExtensionsBuilder: _themeExtensionsBuilder,
      home: const Scaffold(
        appBar: StoryboardAppBar(),
        body: StoryboardBody(),
      ),
    );
  }
}
