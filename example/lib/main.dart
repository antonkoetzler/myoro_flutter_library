import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() => runApp(const _App());

final class _App extends StatefulWidget {
  const _App();

  @override
  State<_App> createState() => _AppState();
}

final class _AppState extends State<_App> {
  final _themeModeController = ValueNotifier<ThemeMode>(ThemeMode.dark);

  @override
  void dispose() {
    _themeModeController.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return ValueListenableBuilder(
      valueListenable: _themeModeController,
      builder: (_, themeMode, _) {
        return MyoroApp(
          themeMode: themeMode,
          home: MyoroScreen(appBar: _AppBar(_themeModeController), body: const _Body()),
        );
      },
    );
  }
}

final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar(this._themeModeController);

  final ValueNotifier<ThemeMode> _themeModeController;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);

  @override
  Widget build(context) {
    return MyoroAppBar(
      showBottomDivider: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Example'),
          MyoroIconTextButton(
            iconConfiguration: const MyoroIconConfiguration(icon: Icons.sunny),
            onTapUp: (_, _) => _themeModeController.value = _themeModeController.value == ThemeMode.dark
                ? ThemeMode.light
                : ThemeMode.dark,
          ),
        ],
      ),
    );
  }
}

final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(context) {
    return const Center(child: Text('Welcome to Myoro Flutter Library!'));
  }
}
